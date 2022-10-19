package taxi.service;

import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;
import taxi.dao.DriverDao;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverDao driverDao;
    private static final int MIN_LENGTH = 8;
    private static final int MAX_LENGTH = 8;
    private static final String EMAIL_VALIDATOR =
            "^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+$";

    @Override
    public void register(Driver driver, String repeatPassword) throws AuthenticationException {
        if(!driver.getEmail().matches(EMAIL_VALIDATOR)) {
            throw new AuthenticationException("Email is invalid");
        }
        if(driver.getPassword().length() < 8) {
            throw new AuthenticationException("Password must be at least "
                    + MIN_LENGTH + " characters");
        }
        if(driver.getPassword().length() > 16) {
            throw new AuthenticationException("Password must not be longer than "
                    + MAX_LENGTH + " characters");
        }
        if(!driver.getPassword().equals(repeatPassword)) {
            throw new AuthenticationException("Passwords do not match");
        }
        driverDao.create(driver);
    }

    @Override
    public Driver login(String email, String password) throws AuthenticationException {
        return null;
    }
}
