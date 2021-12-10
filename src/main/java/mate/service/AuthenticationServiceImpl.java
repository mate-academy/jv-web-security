package mate.service;

import java.util.Optional;
import mate.exception.AuthenticationException;
import mate.lib.Injector;
import mate.lib.Service;
import mate.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> optionalDriver = driverService.findDriverByLogin(login);
        if (optionalDriver.isEmpty()) {
            throw new AuthenticationException("Login or password was incorrect.");
        }
        if (!optionalDriver.get().getPassword().equals(password)) {
            throw new AuthenticationException("Login or password was incorrect.");
        }
        return optionalDriver.get();
    }
}
