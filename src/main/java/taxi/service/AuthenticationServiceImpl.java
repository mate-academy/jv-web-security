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
    public void register(Driver driver, String repeatPassword) throws AuthenticationException {
        if(!driver.getPassword().equals(repeatPassword)) {
            throw new AuthenticationException("Passwords do not match");
        }
        driverDao.create(driver);
    }

    @Override
    public Driver login(String email, String password) throws AuthenticationException {
        return null;
    }
}
