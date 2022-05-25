package taxi.service;

import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.model.Driver;

import java.util.Optional;

public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> driver = driverService.findByLogin(login);
        if (driver.isEmpty() || !driver.get().getPassword().equals(password)) {
            throw new AuthenticationException("Login or password does not match");
        }
        return driver.get();
    }
}
