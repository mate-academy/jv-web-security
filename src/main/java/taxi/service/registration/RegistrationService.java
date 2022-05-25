package taxi.service.registration;

import taxi.exception.RegistrationException;
import taxi.model.Driver;

public interface RegistrationService {
    Driver registration(Driver driver) throws RuntimeException, RegistrationException;
}
