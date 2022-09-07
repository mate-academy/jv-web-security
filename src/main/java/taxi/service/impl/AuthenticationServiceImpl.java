package taxi.service.impl;

import javax.naming.AuthenticationException;
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
        try {
            Driver driver = driverService.getByLogin(login);
            if (!driver.getPassword().equals(password)) {
                throw new RuntimeException();
            }
            return driver;
        } catch (RuntimeException e) {
            throw new AuthenticationException("Username or password was incorrect");
        }
    }
}
