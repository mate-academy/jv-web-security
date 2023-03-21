package taxi.service;

import taxi.dao.DriverDao;
import taxi.lib.Inject;
import taxi.model.Driver;

public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private DriverDao driverDao;
    @Inject
    private DriverService driverService;
   
    //Use your new method _findByLogin_ in the ```authService.login(login, password)``` method 
    //to identify the user based on the login
    @Override
    public Driver login(String login, String password) {
        //driverDao.findByLogin(login);
        return null;
    }
}
