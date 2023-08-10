package taxi.service;

import java.util.Optional;
import taxi.dao.DriverDao;
import taxi.exception.DataProcessingException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver login(String login, String password) {
        Optional<Driver> driver = driverDao.findByLogin(login);
        try {
            if (driver.get().getPassword().equals(password)) {
                return driver.get();
            }
        } catch (Exception e) {
            throw new DataProcessingException("Login or password was incorrect", e);
        }
        throw new DataProcessingException("Login or password was incorrect",
                new RuntimeException());
    }
}
