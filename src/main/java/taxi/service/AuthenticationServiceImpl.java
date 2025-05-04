package taxi.service;

import java.util.Optional;
import taxi.dao.DriverDao;
import taxi.exception.AuthenticationException;
import taxi.lib.Injector;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final Injector injector = Injector.getInstance("taxi");
    private DriverDao driverDao = (DriverDao) injector.getInstance(DriverDao.class);

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> driverToLogin = driverDao.findByLogin(login);
        if (driverToLogin.isEmpty()
                || !driverToLogin.get().getPassword().equals(password)) {
            throw new AuthenticationException("Invalid data!");
        }
        return driverDao.findByLogin(login).get();
    }
}
