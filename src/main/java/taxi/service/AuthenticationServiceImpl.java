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
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> optionalDriver = driverService.findByLogin(login);
        if (!optionalDriver.orElseThrow(() ->
                new AuthenticationException("Login or password are incorrect"))
                .getPassword().equals(password)) {
            throw new AuthenticationException("Login or password are incorrect");
        }
        return optionalDriver.get();
    }
}
