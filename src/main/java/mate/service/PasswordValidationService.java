package mate.service;

import mate.exception.RegistrationException;

public interface PasswordValidationService {
    boolean validate(String password, String repeatPassword) throws RegistrationException;
}
