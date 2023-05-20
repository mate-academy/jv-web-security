package taxi.service;

import java.util.NoSuchElementException;
import javax.naming.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Driver driver = null;
        try {
            driver = driverService.findByLogin(login);
        } catch (NoSuchElementException e) {
            throw new AuthenticationException("Login or password is invalid");
        }
        if (driver.getPassword().equals(password)) {
            return driver;
        }
        throw new AuthenticationException("Login or password is invalid");
    }
}
