package taxi.service;

import taxi.lib.Injector;
import taxi.model.Driver;

public class AuthenticationServiceImpl implements AuthenticationService {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);
    @Override
    public Driver login(String username, String password) {
        Driver user = driverService.findByUsername(username);

        return null;
    }
}
