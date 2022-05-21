package taxi.service;

import taxi.dao.DriverDao;
import taxi.exception.CustomAuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

import java.util.Optional;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    DriverDao driverDao;

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
