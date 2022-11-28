package taxi.service;

import taxi.exception.AuthenticationException;
import taxi.lib.Injector;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final String EXCEPTION_MESSAGE = "Login or password was incorrect";
    private final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService = (DriverService)
            injector.getInstance(DriverService.class);

    public Driver login(String login, String password) throws AuthenticationException {
        Driver driver = driverService.findByLogin(login);
        if (!driver.getPassword().equals(password)) {
            throw new AuthenticationException(EXCEPTION_MESSAGE);
        }
        return driver;
    }
}
