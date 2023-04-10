package taxi.service.impl;

import java.util.Optional;
import taxi.dao.DriverDao;
import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;
import taxi.service.AuthenticationService;
import taxi.util.Encrypt;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> driver = driverDao.findByLogin(login);
        String encryptedPassword = Encrypt.getEncrypt(password);
        if (driver.isPresent() && driver.get().getPassword().equals(encryptedPassword)) {
            return driver.get();
        }
        throw new AuthenticationException("Wrong username or password!");
    }
}
