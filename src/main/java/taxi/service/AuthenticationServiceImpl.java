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
    public Driver login(String login, String password) throws Exception {
        Driver driver = driverDao.findByLogin(login).orElseThrow(AuthenticationException::new);
        if (driver.getPassword().equals(password)) {
            return driver;
        }
        throw new AuthenticationException("Username or password is incorrect");
    }
}
