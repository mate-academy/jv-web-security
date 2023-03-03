package taxi.service;

import java.util.Optional;
import taxi.exception.AuthenticationExeption;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationExeption {
        Optional<Driver> driver = driverService.findByLogin(login);
        if (driver.get().getPassword().equals(password)) {
            return driver.get();
        } else {
            throw new AuthenticationExeption("Login or password is incorrect");
        }
    }
}
