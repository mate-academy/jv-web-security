package taxi.service;

import java.security.NoSuchAlgorithmException;
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
        Driver driver = driverService.findByLogin(login);
        try {
            if (PasswordHashing.checkPassword(password, driver.getHashPassword(),
                    driver.getSaltPassword())) {
                return driver;
            }
            throw new AuthenticationException("Login or password was incorrect");
        } catch (NoSuchAlgorithmException e) {
            throw new AuthenticationException("Can't check password " + password);
        }
    }
}
