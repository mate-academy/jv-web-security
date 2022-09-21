package taxi.service;

import taxi.dao.DriverDao;
import taxi.lib.Inject;
import taxi.model.Driver;
import java.util.Optional;

public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    DriverDao driverDao;

    @Override
    public Driver login(String username, String password) {

    }
}
