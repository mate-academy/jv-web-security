package taxi.service;

import java.util.List;
import java.util.NoSuchElementException;
import taxi.dao.DriverDao;
import taxi.exception.RegistrationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class DriverServiceImpl implements DriverService {
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver create(Driver driver) {
        if (driverDao.findByLogin(driver.getLogin()).isPresent()) {
            throw new RegistrationException("Such login already exists. Please try another");
        }
        return driverDao.create(driver);
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
}
