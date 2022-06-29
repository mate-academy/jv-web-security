package taxi.service;

import java.util.NoSuchElementException;
import taxi.lib.Inject;
import taxi.lib.Service;

@Service
public class RegistrationServiceImpl implements RegistrationService {

    @Inject
    private DriverService driverService;

    @Override
    public boolean register(String login, String password, String repeatedPassword) {
        if (!password.equals(repeatedPassword)) {
            throw new RuntimeException("Passwords are not equal");
        }
        try {
            driverService.findByLogin(login);
            throw new RuntimeException("This login already exists");
        } catch (NoSuchElementException e) {
            return true;
        }
    }
}
