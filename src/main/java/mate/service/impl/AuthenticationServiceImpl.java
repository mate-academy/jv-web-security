package mate.service.impl;

import java.util.Optional;
import mate.exception.AuthenticationException;
import mate.lib.Inject;
import mate.lib.Service;
import mate.model.Driver;
import mate.service.AuthenticationService;
import mate.service.DriverService;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> optionalDriver = driverService.findByLogin(login);
        if (optionalDriver.isEmpty()) {
            throw new AuthenticationException("Username or Password was incorrect");
        }
        if (optionalDriver.get().getPassword().equals(password)) {
            return optionalDriver.get();
        }
        throw new AuthenticationException("Username or Password was incorrect");
    }
}
