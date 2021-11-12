package mate.service;

import java.util.Optional;
import mate.exception.AuthenticationException;
import mate.exception.DataProcessingException;
import mate.lib.Inject;
import mate.lib.Service;
import mate.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String username, String password) throws AuthenticationException {
        Optional<Driver> driver;
        try {
            driver = driverService.findByLogin(username);
        } catch (DataProcessingException e) {
            throw new AuthenticationException("Username or password was incorrect");
        }
        if (driver.isEmpty()) {
            throw new AuthenticationException("Username or password was incorrect");
        }
        if (driver.get().getPassword().equals(password)) {
            return driver.get();
        }
        throw new AuthenticationException("Username or password was incorrect");
    }
}
