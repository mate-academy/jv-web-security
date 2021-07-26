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
        Optional<Driver> driverByLogin = driverService.getDriverByLogin(login);
        if (driverByLogin.isEmpty() || !password.equals(driverByLogin.get().getPassword()))  {
            throw new AuthenticationException("Login or password is incorrect, please "
                    + "check your data, or click on REGISTER button");
        }
            return driverByLogin.get();
    }
}
