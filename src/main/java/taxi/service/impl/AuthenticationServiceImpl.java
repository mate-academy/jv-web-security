package taxi.service.impl;

import java.util.Optional;
import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;
import taxi.service.AuthenticationService;
import taxi.service.DriverService;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String drivername, String password)
            throws AuthenticationException {
        Optional<Driver> foundByloginDriver = driverService.findByLogin(drivername);
        if (foundByloginDriver.isEmpty()) {
            throw new AuthenticationException("Drivers name or password was incorrect");
        }
        if (foundByloginDriver.get().getPassword().equals(password)) {
            return foundByloginDriver.get();
        }
        throw new AuthenticationException("Drivers name or password was incorrect");
    }
}
