package taxi.service;

import java.util.Optional;
import taxi.exception.AuthentificationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthentificationException {
        Optional<Driver> driver = driverService.findByLogin(login);
        if (driver.isEmpty()) {
            throw new AuthentificationException("Login or Password was incorrect");
        }

        if (driver.get().getPassword().equals(password)) {
            return driver.get();
        }
        throw new AuthentificationException("Login or Password was incorrect");
    }
}
