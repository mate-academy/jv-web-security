package taxi.service.impl;

import taxi.dao.DriverDao;
import taxi.exception.RegistrationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;
import taxi.service.RegistrationService;

@Service
public class RegistrationServiceImpl implements RegistrationService {
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver register(Driver driver, String repeatedPassword) throws RegistrationException {
        if (driverDao.findByLogin(driver.getLogin()).isPresent()) {
            throw new RegistrationException("Driver is already exists");
        }
        if (!driver.getPassword().equals(repeatedPassword)) {
            throw new RegistrationException("Password and confirm password don't match");
        }
        return driverDao.create(driver);
    }
}
