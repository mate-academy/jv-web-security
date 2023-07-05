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
        if (driver.isEmpty()) {
            throw new AuthenticationException("Invalid login or password"); // invalid login
        }

        Driver actualDriver = driver.get();
        if (!actualDriver.getPassword().equals(password)) {
            throw new AuthenticationException("Invalid login or password"); // invalid password
        }

        return actualDriver;
    }
}
