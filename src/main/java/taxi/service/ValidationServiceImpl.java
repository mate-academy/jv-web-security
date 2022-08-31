package taxi.service;

import taxi.exception.ValidationException;
import taxi.lib.Service;

@Service
public class ValidationServiceImpl implements ValidationService {
    @Override
    public void validatePassword(String password, String repeatPassword)
            throws ValidationException {
        if (!password.equals(repeatPassword)) {
            throw new ValidationException("Passwords don't match. Try again");
        }
    }
}
