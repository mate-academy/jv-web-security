package taxi.service;

import java.util.Optional;
import taxi.controller.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> driver = driverService.findByLogin(login);
        if (driver.isEmpty() || !password.equals(driver.get().getPassword())) {
            throw new AuthenticationException("Incorrect login or password");
        }
        return driver.get();
    }
}
