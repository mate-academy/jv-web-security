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
            throw new AuthenticationException("Username or password was incorrect!");
        }
        return driver.get();
    }

    @Override
    public Driver register(String username, String password, String repeatPassword)
            throws AuthenticationException {
        if (password.equals(repeatPassword)) {
            Driver driver = new Driver();
            driver.setLogin(username);
            driver.setPassword(password);
            return driver;
        }
        throw new AuthenticationException("Passwords don't match, please try again!");
    }
}
