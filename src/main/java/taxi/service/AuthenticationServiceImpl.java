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
    public Driver login(String login, String password) throws AuthenticationException {
        Driver driver = driverService
                .findByLogin(login)
                .orElseThrow(
                        () -> new AuthenticationException("Login or Password was incorrect")
                );
        String driverPassword = driver.getPassword();
        if (driverPassword.equals(password)) {
            return driver;
        }
        throw new AuthenticationException("Login or Password was incorrect");
    }

    @Override
    public void checkIfLoginExists(String login) throws AuthenticationException {
        if (driverService.findByLogin(login).isPresent()) {
            throw new AuthenticationException("Driver with this login already exists");
        }
    }
}
