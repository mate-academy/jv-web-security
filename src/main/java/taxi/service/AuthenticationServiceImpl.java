package taxi.service;

import java.util.Optional;
import taxi.dao.DriverDao;
import taxi.dao.DriverDaoImpl;
import taxi.exception.AuthenticationException;
import taxi.lib.Injector;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private final Injector injector = Injector.getInstance("mate");
    private final DriverDao driverDao
            = (DriverDao) injector.getInstance(DriverDaoImpl.class);

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> driver = driverDao.findByLogin(login);
        if (driver.isEmpty()) {
            throw new AuthenticationException("Login was incorrect");
        }
        if (driver.get().getPassword().equals(password)) {
            return driver.get();
        }
        throw new AuthenticationException("Password was incorrect");
    }
}
