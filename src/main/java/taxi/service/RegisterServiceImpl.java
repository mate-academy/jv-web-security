package taxi.service;

import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class RegisterServiceImpl implements RegisterService {
    @Inject
    private DriverService driverService;

    @Override
    public void register(Driver driver) throws AuthenticationException {
        if (driverService.findByUsername(driver.getUsername()).isPresent()) {
            throw new AuthenticationException("Try to use another username");
        }
        driverService.create(driver);
    }
}
