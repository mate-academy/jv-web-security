package taxi.service;

import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) {
        Driver driver = driverService.findByLogin(login).orElse(null);
        return driver != null && driver.getPassword().equals(password) ? driver : null;
    }
}
