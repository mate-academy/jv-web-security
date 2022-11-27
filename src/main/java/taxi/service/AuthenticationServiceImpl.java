package taxi.service;

import java.util.Optional;
import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final String USERNAME_OR_PASSWORD_INCORRECT
            = "Username or password are incorrect";
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> optionalDriver = driverService.findByLogin(login);
        if (optionalDriver.isPresent() && optionalDriver.get().getPassword().equals(password)) {
            return optionalDriver.get();
        } else {
            throw new AuthenticationException(USERNAME_OR_PASSWORD_INCORRECT);
        }
    }
}
