package taxi.service;

import java.util.Optional;
import taxi.dao.DriverDao;
import taxi.exception.LoginException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    DriverDao driverDao;

    @Override
    public Driver login(String login, String password) throws LoginException {
        Optional<Driver> driver = driverDao.findByLogin(login);
        if (driver.isPresent()) {
            if (driver.get().getPassword().equals(password)) {
                return driver.get();
            }
            throw new LoginException("Login or password failed!");
        }
        throw new LoginException("Login or password failed!");
    }
}
