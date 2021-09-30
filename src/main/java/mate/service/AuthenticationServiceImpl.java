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
        Optional<Driver> optionalDriver = driverService.findByLogin(login);
        if (optionalDriver.isEmpty() || !optionalDriver.get().getPassword().equals(password)) {
            throw new AuthenticationException("UserName or Password is incorrect");
        }
        return optionalDriver.get();
    }
}
