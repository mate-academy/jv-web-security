package taxi.service;

import taxi.exception.ValidationException;
import taxi.lib.Service;

@Service
public class ValidationServiceImpl implements ValidationService {
    private static final int MIN_PASSWORD_LENGTH = 3;

    @Override
    public void validateLogin(String login) throws ValidationException {
        if (login == null || login.length() == 0) {
            throw new ValidationException("Login cannot be empty");
        }
    }

    @Override
    public void validatePassword(String password, String confirmPassword)
            throws ValidationException {
        if (password == null || password.length() < MIN_PASSWORD_LENGTH) {
            throw new ValidationException("Password must be at least "
                    + MIN_PASSWORD_LENGTH + " characters");
        }
        if (!password.equals(confirmPassword)) {
            throw new ValidationException("Passwords don't match");
        }
    }
}
