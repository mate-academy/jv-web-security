package taxi.service;

import java.util.List;
import java.util.Optional;
import taxi.dao.DriverDao;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class DriverServiceImpl implements DriverService {
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver create(Driver driver) {
        if (findByLogin(driver.getLogin()).isPresent()) {
            throw new RuntimeException("This login already exists " + driver.getLogin());
        }
        return driverDao.create(driver);
    }

    @Override
    public Driver get(Long id) {
        return driverDao.get(id).get();
    }

    @Override
    public List<Driver> getAll() {
        return driverDao.getAll();
    }

    @Override
    public Driver update(Driver driver) {
        return driverDao.update(driver);
    }

    @Override
    public boolean delete(Long id) {
        return driverDao.delete(id);
    }

    @Override
    public Optional<Driver> findByLogin(String login) {
        return driverDao.findByLogin(login);
    }

    @Override
    public boolean checkPassword(String password, String repeatedPassword) {
        if (!password.equals(repeatedPassword)) {
            throw new RuntimeException("Passwords are not equal");
        }
        return true;
    }
}
