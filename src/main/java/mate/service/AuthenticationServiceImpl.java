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
    public Driver login(String driverLogin, String driverPassword) throws AuthenticationException {
        Optional<Driver> driver = driverDao.findByLogin(driverLogin);
        if (driver.isEmpty()) {
            throw new AuthenticationException("Driver or password are incorrect!");
        }
        if (driver.get().getPassword().equals(driverPassword)) {
            return driver.get();
        }
        throw new AuthenticationException("Driver or password are incorrect!");
    }
}
