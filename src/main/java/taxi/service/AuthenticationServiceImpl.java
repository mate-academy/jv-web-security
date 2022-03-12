package taxi.service;

import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;
import javax.security.sasl.AuthenticationException;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Driver driver = driverService.findByLogin(login);
        if (driver.getPassword().equals(password)) {
            return driver;
        }
        throw new AuthenticationException("login or password was incorrect");
    }
}
