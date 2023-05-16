package taxi.service;

import java.util.Optional;
import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String username, String password) throws AuthenticationException {
        Optional<Driver> driver = driverService.findByUsername(username);
        if (driver.isEmpty() || !driver.get().getPassword().equals(password)) {
            throw new AuthenticationException("Username or password is incorrect");
        }
        return driver.get();
    }
}
