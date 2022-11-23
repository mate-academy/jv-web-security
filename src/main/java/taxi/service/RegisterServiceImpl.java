package taxi.service;

import java.util.Optional;
import taxi.dao.RegistrationDao;
import taxi.exception.RegistrationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class RegisterServiceImpl implements RegisterService {
    @Inject
    private RegistrationDao registrationDao;

    @Override
    public Driver register(String login, String password, String repeatPassword)
            throws RegistrationException {
        validatePassword(password, repeatPassword);
        validateLogin(login);
        Driver driver = new Driver();
        driver.setLogin(login);
        driver.setPassword(password);
        return registrationDao.register(driver);
    }

    private void validateLogin(String login) throws RegistrationException {
        Optional<Driver> driver = registrationDao.checkLogin(login);
        if (driver.isPresent()) {
            throw new RegistrationException("Such login already exist");
        }
    }

    private void validatePassword(String password, String repeatPassword)
            throws RegistrationException {
        if (!password.equals(repeatPassword)) {
            throw new RegistrationException("Passwords are not equal");
        }
        if (password.length() < 5) {
            throw new RegistrationException("Password minimum length = 5");
        }
    }
}
