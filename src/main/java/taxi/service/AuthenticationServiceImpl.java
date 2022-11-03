package taxi.service;

import taxi.lib.Injector;
import taxi.lib.Service;
import taxi.model.Driver;
import java.util.Optional;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final Injector injector = Injector.getInstance("taxi");
    private static final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    public Driver login(String driverName, String driverPassword) {
        Optional<Driver> driver = driverService.findByLogin(driverName);
        if (driver.isEmpty()) {
            throw new RuntimeException("login or password was incorrect");
        }
        if (driver.get().getPassword().equals(driverPassword)) {
            return driver.get();
        }
        throw new RuntimeException("login or password was incorrect");
    }
}
