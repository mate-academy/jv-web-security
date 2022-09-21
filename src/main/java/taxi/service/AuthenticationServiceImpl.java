package taxi.service;

import taxi.exception.DataProcessingException;
import taxi.lib.Injector;
import taxi.model.Driver;

import java.util.Optional;

public class AuthenticationServiceImpl implements AuthenticationService {
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    public Driver findDriverByLogin(String username, String password) throws DataProcessingException {
        Optional<Driver> driverByLogin = driverService.findByLogin(username);
        if (driverByLogin.isEmpty()) {
            throw new DataProcessingException("Login or password aren't correct!");
        }
        if (driverByLogin.get().getPassword().equals(password)) {
            return driverByLogin.get();
        }
        throw new DataProcessingException("Login or password aren't correct!");
    }
}
