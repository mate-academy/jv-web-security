package taxi.service;

import taxi.exception.ValidationException;

public interface ValidationService {
    void validateLogin(String login) throws ValidationException;

    void validatePassword(String password, String confirmPassword) throws ValidationException;
}
