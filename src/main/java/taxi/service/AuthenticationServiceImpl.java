package taxi.service;

import taxi.exception.AuthenticationException;
import taxi.lib.Injector;
import taxi.lib.Service;
import taxi.model.Driver;
import java.util.Optional;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);
    @Override
    public Driver login(String username, String password) throws AuthenticationException {
        Optional<Driver> user = driverService.findByUsername(username);
        if (user.isEmpty()) {
            throw new AuthenticationException("Username or password was incorrect");
        }
        if (user.get().getPassword().equals(password)) {
            return user.get();
        }
        throw new AuthenticationException("Username or password was incorrect");
    }
}
