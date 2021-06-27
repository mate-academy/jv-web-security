package mate.service;

import java.util.Optional;
import mate.dao.DriverDao;
import mate.exception.AuthenticationException;
import mate.lib.Inject;
import mate.lib.Service;
import mate.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver login(String username, String password) throws AuthenticationException {
        Optional<Driver> driver = driverDao.findByLogin(username);
        if (driver.isEmpty() || !password.equals(driver.get().getPassword())) {
            throw new AuthenticationException("Invalid username or password");
        }
        return driver.get();
    }
}
