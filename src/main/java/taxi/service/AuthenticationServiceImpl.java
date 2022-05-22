package taxi.service;

import java.util.Optional;
import taxi.dao.DriverDao;
import taxi.exception.CustomAuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver login(String login, String password) throws CustomAuthenticationException {
        Optional<Driver> driver = driverDao.getByLogin(login);
        if (driver.isEmpty()) {
            throw new CustomAuthenticationException("Incorrect credentials");
        }
        if (driver.get().getPassword().equals(password)) {
            return driver.get();
        }
        throw new CustomAuthenticationException("Incorrect credentials");
    }
}
