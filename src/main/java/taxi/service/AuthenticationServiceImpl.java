package taxi.service;

import taxi.exception.AuthenticationException;
import taxi.lib.Injector;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Driver exitDriver = driverService.findByLogin(login);
        if (exitDriver == null) {
            throw new AuthenticationException("Wrong password or login");
        } else if (exitDriver.getPassword().equals(password)) {
            return exitDriver;
        }
        throw new AuthenticationException("Wrong password or login");
    }
}
