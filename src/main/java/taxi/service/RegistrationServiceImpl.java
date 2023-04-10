package taxi.service;

import taxi.exception.RegistrationException;
import taxi.lib.Injector;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class RegistrationServiceImpl implements RegistrationService {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    public Driver registration(String login, String password,
                               String passwordRepeat, String name, String licenseNumber)
            throws RegistrationException {
        if (!password.equals(passwordRepeat)) {
            throw new RegistrationException("Passwords don't match, please try again.");
        }
        Driver driver = driverService.findByLogin(login).orElse(new Driver());
        if (driver.getId() != null) {
            throw new RegistrationException("User with such login "
                    + login + " already exists");
        }
        driver = new Driver(name, licenseNumber, login, password);
        driver = driverService.create(driver);
        return driver;
    }
}
