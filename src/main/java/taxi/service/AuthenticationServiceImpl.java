package taxi.service;

import java.util.Optional;
import taxi.dao.DriverDao;
import taxi.dao.DriverDaoImpl;
import taxi.exception.DataProcessingException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {

    @Inject
    private DriverDao driverDao = new DriverDaoImpl();

    @Override
    public Driver login(String login, String password) throws DataProcessingException {
        Optional<Driver> driver = driverDao.findByLogin(login);

        if (driver.isEmpty()) {
            throw new DataProcessingException("Username or password was incorrect",
                    new Throwable(" :login"));
        }

        if (driver.get().getPassword().equals(password)) {
            return driver.get();
        }
        throw new DataProcessingException("Username or password was incorrect",
                new Throwable(" :login"));
    }
}
