package mate.service;

import java.util.Optional;
import mate.exception.AuthentificationException;
import mate.lib.Inject;
import mate.lib.Injector;
import mate.lib.Service;
import mate.model.Driver;

@Service
public class AuthentificationServiceImpl implements AuthentificationService {
    private Injector injector = Injector.getInstance("mate");
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthentificationException {
        Optional<Driver> driver = driverService.findByLogin(login);
        if (driver.isEmpty() || !driver.get().getPassword().equals(password)) {
            throw new AuthentificationException("Login or password was incorrect!");
        }
        return driver.get();
    }
}
