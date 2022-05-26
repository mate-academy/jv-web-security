package taxi.service.registration;

import taxi.exception.RegistrationException;
import taxi.model.Driver;

public interface RegistrationService {
    Driver register(Driver driver) throws RegistrationException;
}
