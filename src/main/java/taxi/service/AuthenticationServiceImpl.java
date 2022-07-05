package taxi.service;

import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final String EXCEPTION_MESSAGE = "Username or password was incorrect";

    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String username, String password) throws AuthenticationException {
        Driver driver = driverService.findByLogin(username).orElseThrow(() ->
                new AuthenticationException(EXCEPTION_MESSAGE));
        if (driver.getPassword().equals(password)) {
            return driver;
        }
        throw new AuthenticationException(EXCEPTION_MESSAGE);
    }
}
