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
        Optional<Driver> user = driverService.getByLogin(login);
        if (user.isPresent() && user.get().getPassword().equals(password)) {
            return user.get();
        }
        throw new AuthenticationException("Username or password was incorrect");
    }
}
