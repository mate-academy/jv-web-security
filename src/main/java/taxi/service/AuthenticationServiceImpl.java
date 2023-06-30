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
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> driver = driverService.findByLogin(login);
        if (driver.isPresent() && driver.get().getPassword().equals(password)) {
            return driver.get();
        }
        throw new AuthenticationException("Login or password was incorrect, try again.");
    }

    @Override
    public Driver register(String login, String password, String repeatPassword)
            throws AuthenticationException {
        if (password.equals(repeatPassword)) {
            Driver driver = new Driver();
            driver.setLogin(login);
            driver.setPassword(password);
            return driver;
        } else {
            throw new AuthenticationException("Passwords don't match, please try again.");
        }
    }
}
