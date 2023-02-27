package taxi.service;

import taxi.exception.LoginProcessingException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws LoginProcessingException {
        Driver driver = driverService.findByLogin(login).orElseThrow(() ->
                createLoginException());

        if (!password.equals(driver.getPassword())) {
            throw createLoginException();
        }

        return driver;
    }

    private LoginProcessingException createLoginException() {
        return new LoginProcessingException("Driver username or password is wrong.");
    }
}
