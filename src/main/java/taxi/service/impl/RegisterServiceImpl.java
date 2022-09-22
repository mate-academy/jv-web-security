package taxi.service.impl;

import taxi.exception.RegistrationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;
import taxi.service.DriverService;
import taxi.service.RegisterService;

@Service
public class RegisterServiceImpl implements RegisterService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver register(String name, String licenseNumber,
                           String login, String password, String repeatPassword)
            throws RegistrationException {
        if (driverService.findByLogin(login).isPresent()) {
            throw new RegistrationException(
                    "A user with an appropriate username is already registered.");
        }
        if (!password.equals(repeatPassword)) {
            throw new RegistrationException("Passwords do not match!");
        }
        Driver driver = new Driver(name, licenseNumber, login, password);
        return driverService.create(driver);
    }
}
