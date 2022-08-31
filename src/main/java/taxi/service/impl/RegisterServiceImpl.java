package taxi.service.impl;

import javax.naming.AuthenticationException;
import taxi.dao.DriverDao;
import taxi.dao.UserDao;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;
import taxi.model.User;
import taxi.service.RegisterService;

@Service
public class RegisterServiceImpl implements RegisterService {
    @Inject
    private UserDao userDao;
    @Inject
    private DriverDao driverDao;

    @Override
    public User register(String login, String password, String repeatPassword, Driver driver)
            throws AuthenticationException {
        if (!password.equals(repeatPassword)
                || userDao.getByLogin(login).isPresent()) {
            throw new AuthenticationException("Try again!");
        }
        driverDao.create(driver);
        User user = new User();
        user.setLogin(login);
        user.setPassword(password);
        user.setDriver(driver);
        return userDao.create(user);
    }
}
