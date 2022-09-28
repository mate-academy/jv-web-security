package taxi.service;

import java.util.NoSuchElementException;
import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticateServiceImpl implements AuthenticateService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Driver driver;
        try {
            driver = driverService.findByLogin(login);
        } catch (NoSuchElementException e) {
            throw new AuthenticationException("Wrong username or password");
        }
        if (driver.getLogin() != null && driver.getPassword().equals(password)) {
            return driver;
        }
        throw new AuthenticationException("Wrong username or password");
    }
}
