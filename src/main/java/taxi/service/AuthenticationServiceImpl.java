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
        Optional<Driver> driver = driverService.findByLogin(username);
        if (driver.isEmpty()) {
            throw new AuthenticationException("Incorrect username or password, try again");
        }
        if (driver.get().getPassword().equals(password)) {
            return driver.get();
        }
        throw new AuthenticationException("Incorrect username or password, try again");
    }
}
