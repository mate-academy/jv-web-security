package taxi.service;

import java.util.Optional;
import taxi.dao.DriverDao;
import taxi.exeption.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver login(String driverName, String password) throws AuthenticationException {
        Optional<Driver> driver = driverDao.findByLogin(driverName);
        if (driver.isPresent() && driver.get().getPassword().equals(password)) {
            return driver.get();
        }
        throw new AuthenticationException("Login or password is incorrect");
    }
}
