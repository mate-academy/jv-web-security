package mate.service;

import java.util.Optional;
import javax.naming.AuthenticationException;
import mate.lib.Injector;
import mate.lib.Service;
import mate.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final Injector injector = Injector.getInstance("mate");
    private DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> driverByLogin = driverService.findByLogin(login);
        if (driverByLogin.isEmpty()) {
            throw new AuthenticationException("Username or password was incorrect");
        }
        if (driverByLogin.get().getPassword().equals(password)) {
            return driverByLogin.get();
        }
        throw new AuthenticationException("Username or password was incorrect");
    }
}
