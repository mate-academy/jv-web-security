package taxi.service;

import taxi.dao.DriverDao;
import taxi.exception.DataProcessingException;
import taxi.exception.RegistrationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class RegisterServiceImpl implements RegisterService {
    private static final int MIN_LOGIN_LENGTH = 3;
    private static final int MIN_PASSWORD_LENGTH = 5;
    @Inject
    private DriverDao driverDao;

    @Override
    public Driver register(String name, String license, String login,
                           String password, String repeatPassword)
            throws RegistrationException {
        validateInput(login, password, repeatPassword);
        Driver driver = new Driver();
        driver.setLogin(login);
        driver.setPassword(password);
        driver.setName(name);
        driver.setLicenseNumber(license);
        try {
            return driverDao.create(driver);
        } catch (DataProcessingException e) {
            throw new RegistrationException("Such login already exist");
        }
    }

    private void validateInput(String login, String password, String repeatPassword)
            throws RegistrationException {
        if (login.length() < MIN_LOGIN_LENGTH) {
            throw new RegistrationException("Login length minimum length = 3");
        }
        if (!password.equals(repeatPassword)) {
            throw new RegistrationException("Passwords are not equal");
        }
        if (password.length() < MIN_PASSWORD_LENGTH) {
            throw new RegistrationException("Password minimum length = 5");
        }
    }
}
