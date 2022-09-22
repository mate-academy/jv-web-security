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
        Optional<Driver> driverOptional = driverService.getByLogin(login);
        if (driverOptional.isPresent() && driverOptional.get().getPassword().equals(password)) {
            return driverOptional.get();
        }
        throw new AuthenticationException("Username or password was incorrect");
    }
}
