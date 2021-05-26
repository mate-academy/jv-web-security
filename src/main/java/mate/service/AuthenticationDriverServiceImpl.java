package mate.service;

import java.util.Optional;
import mate.dao.DriverDao;
import mate.lib.Injector;
import mate.lib.Service;
import mate.lib.exception.AuthenticationException;
import mate.model.Driver;

@Service
public class AuthenticationDriverServiceImpl implements AuthenticationDriverService {
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverDao driverDao
            = (DriverDao) injector.getInstance(DriverDao.class);

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> driver = driverDao.findByLogin(login);
        if (driver.isEmpty()) {
            throw new AuthenticationException("Username or password is incorrect");
        }
        if (driver.get().getPassword().equals(password)) {
            return driver.get();
        }
        throw new AuthenticationException("Username or password is incorrect");
    }
}
