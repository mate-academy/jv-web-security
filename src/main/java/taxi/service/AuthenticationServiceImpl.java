package taxi.service;

import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

import javax.security.auth.login.LoginException;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    DriverService driverService;

    @Override
    public Driver login(String login, String password) throws LoginException {
        Driver driver = driverService.findByLogin(login)
                .orElseThrow(LoginException::new);
        if (driver.getPassword().equals(password)) {
            return driver;
        }
        throw new LoginException();
    }
}
