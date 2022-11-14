package taxi.service;

import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

import javax.security.auth.login.LoginException;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final String ERROR_MESSAGE = "Email or password was incorrect";
    @Inject
    DriverService driverService;

    @Override
    public Driver login(String login, String password)
            throws AuthenticationException {
        Driver driver = driverService.findByLogin(login)
                .orElseThrow(() ->
                        new AuthenticationException(ERROR_MESSAGE));
        if (driver.getPassword().equals(password)) {
            return driver;
        }
        throw new AuthenticationException(ERROR_MESSAGE);
    }
}
