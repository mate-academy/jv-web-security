package taxi.service;

import java.util.NoSuchElementException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) {
        Driver driver = driverService.findByLogin(login)
                .orElseThrow(() ->
                        new NoSuchElementException("Login or password was incorrect"));
        if (password.equals(driver.getPassword())) {
            return driver;
        }
        throw new RuntimeException("Login or password was incorrect");
    }
}
