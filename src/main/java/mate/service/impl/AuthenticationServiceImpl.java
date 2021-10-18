package mate.service.impl;

import java.util.Optional;

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
    public Driver login(String username, String password) throws AuthenticationException {
            Optional<Driver> driver = driverDao.findByUserName(username);
        if (driver.get().getPassword().equals(password)) {
            return driver.get();
        }
        throw new AuthenticationException("Username or password was incorrect");
    }
}
