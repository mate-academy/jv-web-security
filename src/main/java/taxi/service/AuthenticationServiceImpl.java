package taxi.service;

import java.util.Optional;
import taxi.lib.Injector;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final Injector injector = Injector.getInstance("taxi");
    private static final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    public Driver login(String driverName, String driverPassword) {
        Optional<Driver> driver = driverService.findByLogin(driverName);
        if (driver.isEmpty() || !driver.get().getPassword().equals(driverPassword)) {
            throw new RuntimeException("login or password was incorrect");
        }
        return driver.get();
    }
}
