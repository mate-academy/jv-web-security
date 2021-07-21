package mate.service.impl;

import java.util.Optional;
import mate.exception.AuthenticationException;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.AuthenticationService;
import mate.service.DriverService;

public class AuthenticationServiceImpl implements AuthenticationService {
    private static final Injector injector = Injector.getInstance("mate");

    @Override
    public Driver login(String username, String password) throws AuthenticationException {
        DriverService driverService = (DriverService) injector.getInstance(DriverService.class);
        Optional<Driver> user = driverService.findByLogin(username);
        if (user.isPresent() && user.get().getPassword().equals(password)) {
            return user.get();
        }
        throw new AuthenticationException("Username or password was incorrect");
    }
}
