package mate.service;

import mate.exception.AuthenticationException;
import mate.lib.Injector;
import mate.lib.Service;
import mate.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final Injector injector = Injector.getInstance("mate");
    private static final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Driver driver = driverService.findByLogin(login).orElse(null);
        if (driver == null || !driver.getPassword().equals(password)) {
            throw new AuthenticationException("Can't find user by current login and password");
        }
        return driver;
    }
}
