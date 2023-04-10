package taxi.service;

import taxi.exception.RegistrationException;
import taxi.lib.Inject;
import taxi.lib.Injector;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class RegistrationServiceImpl implements RegistrationService {
    private static final Injector injector = Injector.getInstance("taxi");
    @Inject
    private DriverService driverService;

    @Override
    public Driver register(String login, String password,
                               String passwordRepeat, String name, String licenseNumber)
            throws RegistrationException {
        if (!password.equals(passwordRepeat)) {
            throw new RegistrationException("Passwords don't match, please try again.");
        }
        if (driverService.findByLogin(login).isPresent()) {
            throw new RegistrationException("User with such login "
                    + login + " already exists");
        }
        Driver driver = new Driver(name, licenseNumber, login, password);
        driver = driverService.create(driver);
        return driver;
    }
}
