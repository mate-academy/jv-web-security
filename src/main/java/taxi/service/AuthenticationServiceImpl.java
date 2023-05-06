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
        return driverService.findByLogin(login)
                .filter(driver -> driver.getPassword().equals(password))
                .orElseThrow(() -> new AuthenticationException("Login or password is wrong"));
    }
}
