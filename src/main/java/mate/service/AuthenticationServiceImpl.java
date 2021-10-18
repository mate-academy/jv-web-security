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
        Optional<Driver> driverByLogin = driverService.findByLogin(login);
        if (!driverByLogin.orElseThrow(() ->
                        new AuthenticationException("login or password are incorrect"))
                .getPassword().equals(password)) {
            throw new AuthenticationException("login or password are incorrect");
        }
        return driverByLogin.get();
    }
}
