package taxi.service.impl;

import taxi.exception.AuthenticationException;
import taxi.lib.Injector;
import taxi.lib.Service;
import taxi.model.Driver;
import taxi.service.DriverService;
import taxi.service.RegistrationService;

@Service
public class RegistrationServiceImpl implements RegistrationService {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    public Driver registration(String name,
                               String licenseNumber,
                               String login,
                               String password,
                               String repeatPassword) throws AuthenticationException {

        if (password.isBlank() || repeatPassword.isBlank() || !password.equals(repeatPassword)) {
            throw new AuthenticationException("Password doesn't match");
        }
        return driverService.create(
                new Driver(
                        name,
                        licenseNumber,
                        login,
                        password
                )
        );
    }
}
