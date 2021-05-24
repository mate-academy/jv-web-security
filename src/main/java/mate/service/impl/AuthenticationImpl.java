package mate.service.impl;

import mate.exception.AuthenticationException;
import mate.lib.Injector;
import mate.lib.Service;
import mate.model.Driver;
import mate.service.AuthenticationService;
import mate.service.DriverService;

import java.util.Optional;

@Service
public class AuthenticationImpl implements AuthenticationService {
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> driverWithInputLogin = driverService.findByLogin(login);
        if (driverWithInputLogin.isPresent() && driverWithInputLogin.get().getPassword().equals(password)) {
            return driverWithInputLogin.get();
        }
        throw new AuthenticationException("Username or password is incorrect");
    }
}
