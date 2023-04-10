package taxi.service;

import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;
import taxi.dao.DriverDao;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;
import taxi.util.PasswordUtil;

@Service
public class DriverServiceImpl implements DriverService {
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver create(Driver driver) {
        String hashedPassword = PasswordUtil.hashPassword(driver.getPassword());
        Driver hashedDriver = new Driver(driver.getName(), driver.getLicenseNumber(), driver.getLogin(), hashedPassword);
        return driverDao.create(hashedDriver);
    }

    @Override
    public Driver get(Long id) {
        return driverDao.get(id).orElseThrow(() ->
            new NoSuchElementException("Can't get driver by id: " + id)
        );
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
}
