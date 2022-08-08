package taxi.service;

import taxi.exception.RegistrationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class RegistrationServiceImpl implements RegistrationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver register(Driver driver, String passwordRepeat) throws RegistrationException {
        if (driver != null && driver.getPassword().equals(passwordRepeat)) {
            return driverService.create(driver);
        }
        throw new RegistrationException("Password are incorrect, please enter correctly");
    }
}
