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
        Optional<Driver> optionalDriver = driverDao.findByLogin(login);
        if (optionalDriver.isEmpty()) {
            throw new AuthenticationException("Username or password was incorrect");
        }
        if (optionalDriver.get().getPassword().equals(password)) {
            return optionalDriver.get();
        }
        throw new AuthenticationException("Username or password was incorrect");
    }
}
