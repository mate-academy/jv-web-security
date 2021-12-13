package mate.service;

import java.util.Optional;
import mate.exception.AuthenticationException;
import mate.lib.Inject;
import mate.lib.Service;
import mate.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> driverOptional = driverService.findByLogin(login);
        if (driverOptional.isEmpty() || !driverOptional.get().getPassword().equals(password)) {
            throw new AuthenticationException("Login or password was incorrect");
        }
        return driverOptional.get();
    }
}
