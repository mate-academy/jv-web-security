package taxi.service;

import taxi.dao.DriverDao;
import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class RegisterServiceImpl implements RegisterService {
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver register(String name, String licenseNumber, String login,
                           String password, String repeatPassword)
            throws AuthenticationException {
        if (!password.equals(repeatPassword)
                || driverDao.findByLogin(login).isPresent()) {
            throw new AuthenticationException("Something went wrong, try again!");
        }
        Driver driver = new Driver(name, licenseNumber, login, password);
        return driverDao.create(driver);
    }
}
