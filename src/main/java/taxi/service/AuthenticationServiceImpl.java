package taxi.service;

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
        AuthenticationException ex =
                new AuthenticationException("Username or password is incorrect");
        Driver driver = driverDao.findByLogin(login).orElseThrow(() -> ex);
        if (driver.getPassword().equals(password)) {
            return driver;
        }
        throw ex;
    }
}
