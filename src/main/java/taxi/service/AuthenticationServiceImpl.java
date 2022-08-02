package taxi.service;

import java.util.NoSuchElementException;
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
        try {
            if (driver.get().getPassword().equals(password)) {
                return driver.get();
            }
        } catch (NoSuchElementException e) {
            throw new AuthenticationException("Login or password was incorrect!");
        }
        throw new AuthenticationException("Login or password was incorrect!");
    }
}
