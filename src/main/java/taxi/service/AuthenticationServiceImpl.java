package taxi.service;

import java.util.Optional;
import taxi.dao.DriverDao;
import taxi.dao.DriverDaoImpl;
import taxi.exception.AuthenticationException;
import taxi.model.Driver;

public class AuthenticationServiceImpl implements AuthenticationService {
    private DriverDao driverDao = new DriverDaoImpl();

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> driver = driverDao.findByLogin(login);
        if (driver.isEmpty() || !driver.get().getPassword().equals(password)) {
            throw new AuthenticationException("Login or password was incorrect");
        }
        return driver.get();
    }
}
