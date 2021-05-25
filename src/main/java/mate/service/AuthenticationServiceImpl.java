package mate.service;

import mate.dao.DriverDao;
import mate.lib.Inject;
import mate.lib.Service;
import mate.lib.exception.AuthenticationException;
import mate.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Driver driver = driverDao.findByLogin(login).orElseThrow(() ->
                new AuthenticationException("The user name or password is incorrect"));
        if (driver.getPassword().equals(password)) {
            return driver;
        }
        throw new AuthenticationException("The user name or password is incorrect");
    }
}
