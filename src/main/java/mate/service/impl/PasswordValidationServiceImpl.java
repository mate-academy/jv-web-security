package mate.service.impl;

import mate.exception.AuthenticationException;
import mate.lib.Service;
import mate.service.PasswordValidationService;

@Service
public class PasswordValidationServiceImpl implements PasswordValidationService {
    @Override
    public boolean validate(String password, String repeatPassword) throws AuthenticationException {
        if (!password.equals(repeatPassword)) {
            throw new AuthenticationException("passwords must be the same");
        }
        return true;
    }
}
