package mate.service;

import java.util.Optional;
import mate.controller.exception.AuthenticationException;
import mate.lib.Injector;
import mate.model.Driver;

public class AuthenticationServiceImpl implements AuthenticationService {
    private static final Injector injector = Injector.getInstance("mate");
    private static DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> driver = driverService.findByLogin(login);
        if (driver.isPresent() && driver.get().getPassword().equals(password)) {
            return driver.get();
        }
        throw new AuthenticationException("Login or password is incorrect. Try again");
    }
}
