package taxi.service;

import taxi.dao.DriverDao;
import taxi.exception.RegistrationException;
import taxi.lib.Inject;
import taxi.lib.Service;

@Service
public class RegistrationServiceImp implements RegistrationService {
    @Inject
    private DriverDao driverDao;

    @Override
    public void validation(String login, String password, String repeatPassword)
            throws RegistrationException {
        checkLogin(login);
        checkPassword(password,repeatPassword);
    }

    private void checkLogin(String login) throws RegistrationException {
        if (driverDao.findByLogin(login).isPresent()) {
            throw new RegistrationException("Driver with this login already exists");
        }
    }

    private void checkPassword(String password, String repeatPassword)
            throws RegistrationException {
        if (!password.equals(repeatPassword)) {
            throw new RegistrationException("Passwords do not match!");
        }
    }
}
