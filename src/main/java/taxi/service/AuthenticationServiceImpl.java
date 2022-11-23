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
        Optional<Driver> driverByLogin = driverDao.findByLogin(login);
        if (driverByLogin.isEmpty()) {
            throw new AuthenticationException("Login or password are incorrect!");
        }
        if (driverByLogin.get().getPassword().equals(password)) {
            return driverByLogin.get();
        }
        throw new AuthenticationException("Login or password are incorrect!");
    }
}
