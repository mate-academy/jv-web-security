package taxi.service;

import java.util.Optional;
import taxi.dao.DriverDao;
import taxi.dao.DriverDaoImpl;
import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverDao driverDao = new DriverDaoImpl();

    @Override
    public Driver login(String login, String password)
            throws AuthenticationException {
        Optional<Driver> driverOptional
                = driverDao.findByLogin(login);
        if (driverOptional.isEmpty() || !driverOptional.get().getPassword().equals(password)) {
            throw new AuthenticationException("User name or password was incorrect");
        }
        return driverOptional.get();
    }

    @Override
    public boolean isExist(String login) {
        return !driverDao.findByLogin(login).isEmpty();
    }
}
