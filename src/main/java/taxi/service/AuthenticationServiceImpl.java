package taxi.service;

import taxi.dao.DriverDao;
import taxi.lib.Inject;
import taxi.model.Driver;

import java.util.Optional;

public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverDao driverDao;
    @Override
    public Driver login(String login, String password) {
        Optional<Driver> driver = driverDao.findByLogin(login);
        return null;
    }
}
