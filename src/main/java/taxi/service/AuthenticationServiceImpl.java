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
        return driverService.findByLogin(login).orElse(null);
    }
}
