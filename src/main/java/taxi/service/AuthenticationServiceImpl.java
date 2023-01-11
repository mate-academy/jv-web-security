package taxi.service;

import java.util.Optional;
import taxi.dao.DriverDao;
import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> optionalDriver = driverDao.findByLogin(login);
        Driver driver = optionalDriver
                .orElseThrow(() -> new AuthenticationException("Login or password was incorrect"));
        if (driver.getPassword().equals(password)) {
            return driver;
        }
        throw new AuthenticationException("Login or password was incorrect");
    }
}
