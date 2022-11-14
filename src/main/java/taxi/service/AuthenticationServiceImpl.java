package taxi.service;

import taxi.lib.Injector;
import taxi.model.Driver;

import javax.security.auth.login.LoginException;

public class AuthenticationServiceImpl implements AuthenticationService {
    Injector injector = Injector.getInstance("mate");
    DriverService driverService;

    public AuthenticationServiceImpl() {
        driverService = (DriverService) injector.getInstance(DriverService.class);
    }

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
