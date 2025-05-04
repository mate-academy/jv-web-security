package taxi.service.impl;

import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;
import taxi.service.AuthenticationService;
import taxi.service.DriverService;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver authenticateDriver(String login, String password) throws AuthenticationException {
        final Driver driver = driverService.findByLogin(login);
        final String passwordHash = String.valueOf(password.hashCode()
                + driver.getLicenseNumber().hashCode());
        if (!driver.getPassword().equals(passwordHash)) {
            throw new AuthenticationException("Your login or password was incorrect");
        }
        return driver;
    }
}
