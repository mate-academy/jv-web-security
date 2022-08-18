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
    public Driver register(Driver driver) throws RegistrationException {
        if (driverService.findByLogin(driver.getLogin()).isPresent()) {
            throw new RegistrationException("Driver with such login already exists");
        }
        return driverService.create(driver);
    }
}
