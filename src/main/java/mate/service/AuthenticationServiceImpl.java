package mate.service;

import mate.lib.Inject;
import mate.model.Driver;

import java.util.Optional;

public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;
    @Override
    public Driver login(String login, String password) {
        Optional<Driver> driver = driverService.findByLogin(login);
        if (driver.isPresent() && driver.get().getPassword().equals(password)) {
            return driver.get();
        }
        throw new RuntimeException();
    }
}
