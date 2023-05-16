package taxi.service;

import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password)
            throws AuthenticationException {
        Driver driver = driverService.findDriverByLogin(login).orElseThrow(
                () -> new AuthenticationException("Username not found")
        );
        if (!driver.getPassword().equals(password)) {
            throw new AuthenticationException("Invalid password");
        }
        return driver;
    }
}
