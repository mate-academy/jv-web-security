package taxi.service;

import java.util.Optional;
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
            throws taxi.exception.AuthenticationService {
        Optional<Driver> byLogin = driverService.findByLogin(login);
        if (byLogin.isEmpty()) {
            throw new taxi.exception.AuthenticationService("login or password was incorrect");
        }
        if (byLogin.get().getPassword().equals(password)) {
            return byLogin.get();
        }
        throw new taxi.exception.AuthenticationService("login or password was incorrect");
    }
}
