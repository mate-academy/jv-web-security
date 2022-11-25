package taxi.service.authentication;

import java.util.Optional;
import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;
import taxi.service.DriverService;
import taxi.service.PasswordManager;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final String MESSAGE_INCORRECT = "Login or password is incorrect!";
    private static final String MESSAGE_BLANK = "Login or password can't be blank!";
    @Inject
    private DriverService driverService;
    @Inject
    private PasswordManager passwordManager;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        if (login == null || password == null) {
            throw new AuthenticationException(MESSAGE_BLANK);
        }
        Optional<Driver> optionalDriver = driverService.findByLogin(login);
        if (optionalDriver.isPresent()) {
            Driver driver = optionalDriver.get();
            String salt = driver.getSalt();
            String expectedHash = driver.getPassword();
            if (passwordManager.isPasswordCorrect(expectedHash, password, salt)) {
                return driver;
            }
        }
        throw new AuthenticationException(MESSAGE_INCORRECT);
    }
}
