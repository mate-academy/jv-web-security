package mate.service;

import java.util.Optional;
import mate.exception.AuthenticationExcception;
import mate.lib.Inject;
import mate.lib.Service;
import mate.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationExcception {
        Optional<Driver> driver = driverService.getDriverByLogin(login);
        if (driver.isPresent() && driver.get().getPassword().equals(password)) {
            return driver.get();
        }
        throw new AuthenticationExcception("Login or password was incorrect");
    }
}
