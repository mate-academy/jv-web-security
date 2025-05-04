package taxi.service.impl;

import taxi.exception.AuthenticationException;
import taxi.lib.Injector;
import taxi.lib.Service;
import taxi.model.Driver;
import taxi.service.AuthenticationService;
import taxi.service.DriverService;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final Injector injector = Injector.getInstance("taxi");
    private static final DriverService driverService
            = (DriverService) injector.getInstance((DriverService.class));

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        return driverService.findByLogin(login);
    }
}
