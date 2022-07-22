package taxi.service;

import java.util.NoSuchElementException;
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
        try {
            Driver driver = driverService.findByLogin(login);
            if (!driver.getPassword().equals(password)) {
                throw new NoSuchElementException();
            }
            return driver;
        } catch (NoSuchElementException e) {
            throw new AuthenticationException("Username or password is incorrect");
        }
    }
}
