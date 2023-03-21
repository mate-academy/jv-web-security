package taxi.service;

import java.util.Optional;
import javax.naming.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> foundDriver = driverService.findByLogin(login);
        if (foundDriver.isEmpty()) {
            throw new AuthenticationException("Login or password was incorrect");
        }
        if (foundDriver.get().getPassword().equals(password)) {
            return foundDriver.get();
        }
        throw new AuthenticationException("Login or password was incorrect");
    }
}
