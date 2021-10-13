package mate.service;

import mate.exception.AuthenticationException;
import mate.lib.Inject;
import mate.lib.Service;
import mate.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Driver driver = driverService.findByLogin(login);
        if (driver.getPassword() == null || !driver.getPassword().equals(password)) {
            throw new AuthenticationException("login or password was incorrect");
        }
        return driver;
    }
}
