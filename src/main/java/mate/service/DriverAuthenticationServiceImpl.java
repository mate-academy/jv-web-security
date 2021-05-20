package mate.service;

import mate.lib.Inject;
import mate.lib.Service;
import mate.lib.exception.AuthenticationException;
import mate.model.Driver;

@Service
public class DriverAuthenticationServiceImpl implements DriverAuthenticationService {
    private static final String INCORRECT_CREDENTIALS = "Login or password is incorrect.";
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Driver driver = driverService.findByLogin(login)
                .orElseThrow(() -> new AuthenticationException(INCORRECT_CREDENTIALS));
        if (driver.getPassword().equals(password)) {
            return driver;
        }
        throw new AuthenticationException(INCORRECT_CREDENTIALS);
    }
}
