package taxi.service;

import java.util.Optional;
import taxi.exception.AuthenticationException;
import taxi.lib.Injector;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService = (DriverService)
            injector.getInstance(DriverService.class);

    @Override
    public Driver login(String login, String password)
            throws AuthenticationException {
        Optional<Driver> byLogin = driverService.findByLogin(login);
        if (byLogin.get().getPassword().equals(password)) {
            return byLogin.get();
        }
        throw new AuthenticationException("login or password was incorrect");
    }
}
