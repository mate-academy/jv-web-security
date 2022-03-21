package taxi.service;

import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Driver driver = driverService.getByLogin(login);
        if (driver != null && driver.getPassword().equals(password)) {
            return driver;
        }
        throw new AuthenticationException("User or password was incorrect");
    }
}
