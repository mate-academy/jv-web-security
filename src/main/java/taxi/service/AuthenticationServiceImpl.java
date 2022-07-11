package taxi.service;

import java.util.Optional;
import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final String EXCEPTION_MESSAGE = "Username or password was incorrect";

    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String username, String password) throws AuthenticationException {
        Optional<Driver> currentDriver = driverService.findByLogin(username);
        if (currentDriver.isPresent() && currentDriver.get().getPassword().equals(password)) {
            return currentDriver.get();
        }
        throw new AuthenticationException(EXCEPTION_MESSAGE);
    }
}
