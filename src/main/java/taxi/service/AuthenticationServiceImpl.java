package taxi.service;

import taxi.dao.DriverDao;
import taxi.exception.AuthnticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

import java.util.Optional;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;
    @Override
    public Driver login(String login, String password) throws AuthnticationException {
        Optional<Driver> driver = driverService.findByLogin(login);
        if (driver.isEmpty()) {
            throw new AuthnticationException("Username or password is incorrect.");
        }
        if (driver.get().getPassword().equals(password)) {
            return driver.get();
        }
        throw new AuthnticationException("Username or password is incorrect.");
    }
}
