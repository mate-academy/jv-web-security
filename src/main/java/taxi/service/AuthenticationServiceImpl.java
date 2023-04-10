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
    public Driver login(String name, String password)
            throws AuthenticationException {
        Optional<Driver> driverByLogin = driverDao.findByLogin(name);
        if (driverByLogin.isEmpty()) {
            throw new AuthenticationException("Can`t find driver by login");
        }
        if (driverByLogin.get().getPassword().equals(password)) {
            return driverByLogin.get();
        }
        throw new AuthenticationException("Password is incorrect");
    }

    @Override
    public Driver register(String name, String password, String repeatPassword)
            throws AuthenticationException {
        if (name == null || password == null || repeatPassword == null) {
            throw new AuthenticationException("Fields can not be null ");
        }
        if (password.equals(repeatPassword)) {
            Driver driver = new Driver();
            driver.setLogin(name);
            driver.setPassword(password);
            return driver;
        } else {
            throw new AuthenticationException("Can`t registrate driver");
        }
    }
}
