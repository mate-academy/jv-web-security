package taxi.service;

import java.util.Optional;
import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final int MIN_LENGTH = 8;
    private static final int MAX_LENGTH = 8;
    private static final String EMAIL_VALIDATOR =
            "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$";
    @Inject
    private DriverService driverService;

    @Override
    public void register(Driver driver, String repeatPassword) throws AuthenticationException {
        if (!driver.getEmail().matches(EMAIL_VALIDATOR)) {
            throw new AuthenticationException("Please enter a valid email");
        }
        if (driver.getPassword().length() < 8) {
            throw new AuthenticationException("Password must be at least "
                    + MIN_LENGTH + " characters");
        }
        if (driver.getPassword().length() > 16) {
            throw new AuthenticationException("Password must not be longer than "
                    + MAX_LENGTH + " characters");
        }
        if (!driver.getPassword().equals(repeatPassword)) {
            throw new AuthenticationException("Passwords do not match");
        }
        driverService.create(driver);
    }

    @Override
    public Driver login(String email, String password) throws AuthenticationException {
        Optional<Driver> driver = driverService.findByLogin(email);
        if (driver.isEmpty()) {
            throw new AuthenticationException("Email or password was incorrect");
        }
        if (driver.get().getPassword().equals(password)) {
            return driver.get();
        }
        throw new AuthenticationException("Email or password was incorrect");
    }
}
