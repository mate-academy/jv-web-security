package taxi.service.registration;

import taxi.exception.RegistrationException;
import taxi.model.Driver;

public interface DriverRegistrationService {
    Driver register(String name, String licenseNumber,
                    String login, String password) throws RegistrationException;
}
