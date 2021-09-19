package mate.service;

import java.util.Optional;
import mate.dao.DriverDao;
import mate.exception.AuthentificationException;
import mate.lib.Inject;
import mate.lib.Service;
import mate.model.Driver;

@Service
public class AuthentificationServiceImpl implements AuthentificationService {
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver login(String login, String password) throws AuthentificationException {
        Optional<Driver> driver = driverDao.findByLogin(login);
        if (driver.isEmpty()) {
            throw new AuthentificationException("Login or password was incorrect");
        }
        if (driver.get().getPassword().equals(password)) {
            return driver.get();
        }
        throw new AuthentificationException("Login or password was incorrect");
    }
}
