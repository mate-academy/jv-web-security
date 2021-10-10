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
        Optional<Driver> byLogin = driverService.findByLogin(login);
        if (byLogin.isPresent() && byLogin.get().getPassword().equals(password)) {
            return byLogin.get();
        }
        throw new AuthenticationException("Login or password are wrong!");
    }
}
