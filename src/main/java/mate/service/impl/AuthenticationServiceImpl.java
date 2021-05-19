package mate.service.impl;

import mate.dao.DriverDao;
import mate.exception.AuthenticationException;
import mate.lib.Inject;
import mate.lib.Service;
import mate.model.Driver;
import mate.service.AuthenticationService;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Driver driver = driverDao.findByLogin(login)
                .orElseThrow(() ->
                        new AuthenticationException("Username or password was incorrect"));
        if (driver.getPassword().equals(password)) {
            return driver;
        }
        throw new AuthenticationException("Username or password was incorrect");
    }
}
