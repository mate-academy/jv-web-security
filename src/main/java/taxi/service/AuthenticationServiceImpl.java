package taxi.service;

import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Injector;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {

    private static final Injector injector = Injector.getInstance("taxi");
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Driver driver = driverService.findByLogin(login).orElseThrow(()
                -> new AuthenticationException("Your login or password is incorrect"));
        if (!password.equals(driver.getPassword())) {
            throw new AuthenticationException("Your login or password is incorrect");
        }
        return driver;
    }
}
