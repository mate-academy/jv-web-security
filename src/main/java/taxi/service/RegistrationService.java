package taxi.service;

import taxi.exception.RegistrationException;

public interface RegistrationService {
    void validation(String login, String password, String repeatPassword)
            throws RegistrationException;
}
