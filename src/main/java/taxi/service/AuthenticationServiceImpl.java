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
        if (optionalDriver.isEmpty() || !optionalDriver.get().getPassword().equals(password)) {
            throw new AuthenticationException("Wrong login or password");
        }
        return optionalDriver.get();
    }
}
