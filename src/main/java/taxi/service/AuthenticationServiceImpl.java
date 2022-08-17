package taxi.service;

import taxi.exception.AuthenticationException;
import taxi.lib.Injector;
import taxi.lib.Service;
import taxi.model.Driver;

import java.util.Optional;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    public Optional<Driver> login(String login, String password) throws AuthenticationException {
        Driver driver = driverService.findByLogin(login);
        if (driver != null) {
            if (driver.getPassword().equals(password)) {
                return Optional.ofNullable(driver);
            }
        }
        throw new AuthenticationException("Wrong login or password");
    }
}
