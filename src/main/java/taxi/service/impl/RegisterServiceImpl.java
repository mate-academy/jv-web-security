package taxi.service.impl;

import taxi.dao.DriverDao;
import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;
import taxi.service.RegisterService;

@Service
public class RegisterServiceImpl implements RegisterService {
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver register(String name, String licenseNumber,
                           String login, String password, String repeatPassword)
            throws AuthenticationException {
        if (driverDao.findByLogin(login).isPresent()) {
            throw new AuthenticationException(
                    "A user with an appropriate username is already registered.");
        }
        if (!password.equals(repeatPassword)) {
            throw new AuthenticationException("Passwords do not match!");
        }
        Driver driver = new Driver(name, licenseNumber, login, password);
        return driverDao.create(driver);
    }
}
