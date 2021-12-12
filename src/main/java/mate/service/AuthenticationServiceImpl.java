package mate.service;

import javax.naming.AuthenticationException;
import mate.lib.Inject;
import mate.lib.Service;
import mate.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Driver driver = driverService.findByLogin(login).orElseThrow(()
                -> new AuthenticationException("login or password is incorrect"));
        if (driver.getPassword().equals(password)) {
            return driver;
        }
        throw new AuthenticationException("login or password is incorrect");
    }
}
