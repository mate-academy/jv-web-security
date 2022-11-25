package taxi.service.registration;

import java.util.Optional;
import taxi.exception.RegistrationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;
import taxi.service.DriverService;
import taxi.service.PasswordManager;

@Service
public class DriverRegistrationServiceImpl
        implements DriverRegistrationService {
    @Inject
    private PasswordManager passwordManager;
    @Inject
    private DriverService driverService;

    @Override
    public Driver register(String name, String licenseNumber, String login, String password)
            throws RegistrationException {
        Optional<Driver> optionalDriver = driverService.findByLogin(login);
        if (optionalDriver.isPresent()) {
            throw new RegistrationException("Driver with such login already exists");
        }
        Driver driver = new Driver();
        driver.setName(name);
        driver.setLicenseNumber(licenseNumber);
        driver.setLogin(login);
        String salt = passwordManager.getSalt();
        String passwordHash = passwordManager.getPasswordHash(password, salt);
        driver.setSalt(salt);
        driver.setPassword(passwordHash);
        return driverService.create(driver);
    }
}
