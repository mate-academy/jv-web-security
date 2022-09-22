package taxi.service;

import taxi.exception.RegistrationException;
import taxi.model.Driver;

public interface RegisterService {
    Driver register(String name, String licenseNumber,
                    String login, String password, String repeatPassword)
            throws RegistrationException;
}
