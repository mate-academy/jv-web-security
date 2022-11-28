package taxi.service;

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
        Driver driver = driverDao.findByLogin(login)
                .orElseThrow(() ->
                        new AuthenticationException("Incorrect login or password entered"));
        if (driver.getPassword().equals(password)) {
            return driver;
        }
        throw new AuthenticationException("Incorrect login or password entered");
    }
}
