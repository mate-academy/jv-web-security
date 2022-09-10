package taxi.service;

import java.util.Objects;
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
        Driver driver = driverService.findByLogin(login).orElseThrow(() ->
                new AuthenticationException("Can't find driver with this login and password."));
        if (!Objects.equals(password, driver.getPassword())) {
            throw new AuthenticationException("Can't find driver with this login and password.");
        }
        return driver;
    }
}
