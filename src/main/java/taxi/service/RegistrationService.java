package taxi.service;

import taxi.exception.RegistrationException;
import taxi.model.Driver;

public interface RegistrationService {
    Driver registration(String login, String password,
                        String passwordRepeat, String name, String licenseNumber)
            throws RegistrationException;

}
