package taxi.service.impl;

import javax.naming.AuthenticationException;
import taxi.dao.DriverDao;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;
import taxi.service.RegisterService;

@Service
public class RegisterServiceImpl implements RegisterService {
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver register(String login, String password, String repeatPassword,
                           String name, String licenseNumber)
            throws AuthenticationException {
        if (!password.equals(repeatPassword)
                || driverDao.getByLogin(login).isPresent()) {
            throw new AuthenticationException("Try again!");
        }
        Driver driver = new Driver(name, licenseNumber, login, password);
        return driverDao.create(driver);
    }
}
