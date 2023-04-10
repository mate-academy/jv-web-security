package mate.service.impl;

import mate.exception.AuthenticationException;
import mate.lib.Inject;
import mate.lib.Service;
import mate.model.Driver;
import mate.service.AuthenticationService;
import mate.service.DriverService;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Driver driver = driverService.findByLogin(login);
        if (!password.equals(driver.getPassword())) {
            throw new AuthenticationException("Login or password is incorrect");
        }
        return driver;
    }
}
