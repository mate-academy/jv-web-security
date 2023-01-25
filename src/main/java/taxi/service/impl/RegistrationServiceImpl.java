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
        if (!driver.getPassword().equals(repeatedPassword)) {
            throw new RegistrationException("Passwords are different");
        }
        if (repeatedPassword.length() < 5) {
            throw new RegistrationException(
                    "Password length should be greater than 5 characters"
            );
        }
        return driverDao.create(driver);
    }
}
