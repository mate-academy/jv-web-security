package mate.service;

import java.util.Optional;
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
        Optional<Driver> driverFromDb = driverDao.findByLogin(login);
        if (driverFromDb.isPresent() && driverFromDb.get().getPassword().equals(password)) {
            return driverFromDb.get();
        }
        throw new AuthenticationException("Login or password incorrect");
    }
}
