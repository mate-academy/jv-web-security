package mate.service;

import mate.lib.Inject;
import mate.lib.Service;
import mate.lib.exception.AuthenticationException;
import mate.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Driver driver = driverService.findByLogin(login)
                .orElseThrow(() -> new AuthenticationException("Username or password incorrect!"));
        if (driver != null & driver.getPassword().equals(password)) {
            return driver;
        }
        throw new AuthenticationException("Username or password incorrect!");
    }
}
