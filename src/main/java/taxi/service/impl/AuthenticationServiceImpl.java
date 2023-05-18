package taxi.service.impl;

import java.util.Optional;

import taxi.exception.AuthenticationException;
import taxi.lib.Injector;
import taxi.lib.Service;
import taxi.model.Driver;
import taxi.service.AuthenticationService;
import taxi.service.DriverService;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> driver = driverService.findByLogin(login);
        if (driver.isEmpty()) {
            throw new AuthenticationException("Password or login is incorrect");
        }
        if (driver.get().getPassword().equals(password)) {
            return driver.get();
        }
        if (driver.isPresent() && driver.get().getPassword().equals(password)) {
            return driver.get();
        }
    }
}
