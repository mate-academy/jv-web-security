package mate.service;

import mate.dao.DriverDao;
import mate.exception.AuthenticationException;
import mate.lib.Inject;
import mate.lib.Service;
import mate.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Driver driver = driverDao.getByLogin(login).orElseThrow(()
                -> new AuthenticationException("Login or password is incorrect"));
        if (driver.getPassword().equals(password)) {
            return driver;
        }
        throw new AuthenticationException("Login or password is incorrect");
    }
}
