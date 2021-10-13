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
        Optional<Driver> driverOptional = driverDao.findByLogin(login);
        if (driverOptional.isEmpty() || driverOptional.get().getPassword().equals(password)) {
            throw new AuthenticationException("Username or password was incorrect");
        }
        return driverOptional.get();
    }
}
