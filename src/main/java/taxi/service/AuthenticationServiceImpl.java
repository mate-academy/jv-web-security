package taxi.service;

import java.util.Optional;
import taxi.dao.DriverDao;
import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Injector;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {

    private static final Injector injector = Injector.getInstance("taxi");

    @Inject
    private final DriverDao driverDao =
            (DriverDao) injector.getInstance(DriverDao.class);

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> driver = driverDao.findByLogin(login);

        if (driver.isEmpty()) {
            throw new AuthenticationException("Username or password was incorrect");
        }

        if (driver.get().getPassword().equals(password)) {
            return driver.get();
        }

        throw new AuthenticationException("Username or password was incorrect");
    }
}
