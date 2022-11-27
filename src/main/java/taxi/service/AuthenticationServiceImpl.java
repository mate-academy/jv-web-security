package taxi.service;

import java.util.Optional;
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
        System.out.println("AuthSevice");
        Optional<Driver> driver = driverDao.findByUsername(login);
        System.out.println("optional authservice");
        if (driver.isEmpty() || !driver.get().getPassword().equals(password)) {
            System.out.println("Here");
            throw new AuthenticationException("Login or password was incorrect");
        }
        return driver.get();
    }
}
