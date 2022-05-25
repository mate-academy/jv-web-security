package taxi.service;

import java.util.Optional;
import taxi.exception.AuthenticationEsception;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationEsception {
        Optional<Driver> driver = driverService.findByLogin(login);
        if (driver.isEmpty() || !driver.get().getPassword().equals(password)) {
            throw new AuthenticationEsception("Login or password was incorrect");
        }
        return driver.get();
    }
}
