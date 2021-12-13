package mate.service;

import mate.exception.AuthenticationException;

public interface PasswordValidationService {
    boolean validate(String password, String repeatPassword) throws AuthenticationException;
}
