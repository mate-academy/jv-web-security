package taxi.service.impl;

import java.util.Objects;
import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;
import taxi.service.AuthenticationService;
import taxi.service.DriverService;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Driver driver = driverService.findByLogin(login);
        if (Objects.equals(driver.getPassword(), password)) {
            return driver;
        } else {
            throw new AuthenticationException("Username or password was incorrect");
        }
    }
}
