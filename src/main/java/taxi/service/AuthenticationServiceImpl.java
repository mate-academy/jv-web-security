package taxi.service;

import java.util.Optional;
import taxi.dao.DriverDao;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver login(String login, String password) throws Exception {
        Optional<Driver> driver = driverDao.findByLogin(login);
        if (driver.get().getPassword().equals(password)) {
            return driver.get();
        }
        throw new Exception("Username or password is incorrect");
    }
}
