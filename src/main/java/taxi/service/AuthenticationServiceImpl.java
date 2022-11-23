package taxi.service;

import java.util.Objects;
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
        if (driver.isEmpty() || !Objects.equals(driver.get().getPassword(), password)) {
            throw new AuthenticationException("Login or password incorrect!");
        }
        return driver.get();
    }

    @Override
    public Driver register(Driver driver) throws AuthenticationException {
        String login = driver.getLogin();
        if (driverService.findByLogin(login).isPresent()) {
            throw new AuthenticationException("Driver with " + login + " login already exists!");
        }
        if (driver.getPassword().length() < 6) {
            throw new AuthenticationException("Password length can`t be less than 6 symbols!");
        }
        return driver;
    }
}
