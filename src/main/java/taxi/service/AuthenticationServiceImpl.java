package taxi.service;

import java.security.NoSuchAlgorithmException;
import java.util.Optional;
import taxi.exception.AuthenticationException;
import taxi.lib.Injector;
import taxi.lib.Service;
import taxi.model.Driver;
import taxi.util.PasswordHashing;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final Injector injector = Injector.getInstance("taxi");
    private static final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> driver = driverService.findByLogin(login);
        try {
            if (driver.isPresent() && PasswordHashing.checkPassword(
                    password, driver.get().getHashPassword(),
                    driver.get().getSaltPassword())) {
                return driver.get();
            }
            throw new AuthenticationException("Login or password was incorrect");
        } catch (NoSuchAlgorithmException e) {
            throw new AuthenticationException("Can't check password " + password);
        }
    }
}
