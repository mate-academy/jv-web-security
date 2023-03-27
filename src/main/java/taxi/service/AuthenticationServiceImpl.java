package taxi.service;

import java.util.NoSuchElementException;
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
        Driver driver;
        try {
            driver = driverService.findByLogin(login);
        } catch (NoSuchElementException e) {
            throw new AuthenticationException("Username or password was incorrect");
        }

        if (!driver.getPassword().equals(password)) {
            throw new AuthenticationException("Username or password was incorrect");
        }

        return driver;
    }
}
