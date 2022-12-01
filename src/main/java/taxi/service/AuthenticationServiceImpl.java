package taxi.service;

import java.util.Optional;
import taxi.dao.DriverDao;
import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> driverFromDb = driverDao.findByLogin(login);
        if (driverFromDb.isEmpty() || !driverFromDb.get().getPassword().equals(password)) {
            throw new AuthenticationException(" Login or password was incorrect ... try again");
        }
        return driverFromDb.get();
    }
}
