package taxi.service;

import java.util.Optional;
import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String username, String password) throws AuthenticationException {
        Optional<Driver> driverOptional = driverService.findByLogin(username);
        if (driverOptional.isPresent() && driverOptional.get().getPassword().equals(password)) {
            return driverOptional.get();
        }
        throw new AuthenticationException("Login or password was incorrect");
    }
}
