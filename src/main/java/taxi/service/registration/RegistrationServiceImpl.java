package taxi.service.registration;

import java.util.Optional;
import taxi.exception.RegistrationException;
import taxi.lib.Injector;
import taxi.lib.Service;
import taxi.model.Driver;
import taxi.service.entity.DriverService;

@Service
public class RegistrationServiceImpl implements RegistrationService {
    private static final int MIN_PASSWORD_LENGTH = 6;
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    public Driver register(Driver driver) throws RegistrationException {
        Optional<Driver> dbDriver = driverService.findByLogin(driver.getLogin());
        if (dbDriver.isEmpty() && driver.getPassword().length() >= MIN_PASSWORD_LENGTH) {
            driverService.create(driver);
            return driver;
        }
        throw new RegistrationException("Incorrect password or login");
    }
}
