package mate.service.impl;

import java.util.Optional;
import mate.dao.DriverDao;
import mate.dao.DriverDaoImpl;
import mate.exception.AuthenticationException;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.AuthenticationService;

public class AuthenticationServiceImpl implements AuthenticationService {
    private Injector injector = Injector.getInstance("mate");
    private DriverDao driverDao = new DriverDaoImpl();
    @Override
    public Driver login(String username, String password) throws AuthenticationException {
        Optional<Driver> user = driverDao.findByDriverLogin(username);
        if (user.isEmpty()) {
           throw new AuthenticationException("Login or password was incorrect");
        }
        if (user.get().getPassword().equals(password)) {
            return user.get();
        }
        throw new AuthenticationException("Login or password was incorrect");
    }

}
