package taxi.service.impl;

import java.util.Optional;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import taxi.dao.DriverDao;
import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;
import taxi.service.AuthenticationService;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    public static final Logger logger =
            LogManager.getLogger(AuthenticationServiceImpl.class);
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        logger.info("Method login was called.Params: login = {}", login);
        Optional<Driver> driver = driverDao.findByLogin(login);
        if (driver.isPresent() && driver.get().getPassword().equals(password)) {
            return driver.get();
        }
        throw new AuthenticationException("username or password was incorrect");
    }
}
