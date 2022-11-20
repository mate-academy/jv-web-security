package taxi.service;

import java.util.Optional;
import taxi.dao.DriverDao;
import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final String INCORRECT_INPUT_DATA_MSG = "Login or password are incorrect";
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> driver = driverDao.findByLogin(login);
        if (driver.isEmpty()) {
            throw new AuthenticationException(INCORRECT_INPUT_DATA_MSG);
        }
        if (password.equals(driver.get().getPassword())) {
            return driver.get();
        }
        throw new AuthenticationException(INCORRECT_INPUT_DATA_MSG);
    }
}
