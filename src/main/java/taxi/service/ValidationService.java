package taxi.service;

import taxi.exception.ValidationException;

public interface ValidationService {
    void validatePassword(String password, String repeatPassword) throws ValidationException;
}
