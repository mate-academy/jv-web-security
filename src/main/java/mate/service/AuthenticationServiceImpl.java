package mate.service;

import java.util.Optional;
import mate.dao.DriverDao;
import mate.lib.Inject;
import mate.lib.Service;
import mate.lib.exception.AuthenticationException;
import mate.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverDao driverDao;
    
    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> driver = driverDao.findByLogin(login);
        if (driver.get().getPassword().equals(password)) {
            return driver.get();
        }
        if (driver.isEmpty()) {
            throw new AuthenticationException("Login or password is incorrect");
        }
        throw new AuthenticationException("Login or password is incorrect");
    }
}
