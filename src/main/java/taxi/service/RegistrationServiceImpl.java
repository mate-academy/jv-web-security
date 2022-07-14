package taxi.service;

import taxi.dao.DriverDao;
import taxi.exception.RegistrationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class RegistrationServiceImpl implements RegistrationService {
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver register(Driver driver, String passwordRepeat) throws RegistrationException {
        if (!driver.getPassword().equals(passwordRepeat)) {
            throw new RegistrationException("Passwords don't match");
        }
        if (driverDao.findByLogin(driver.getLogin()).isPresent()) {
            throw new RegistrationException("Driver with such login already exists");
        }
        return driverDao.create(driver);
    }
}
