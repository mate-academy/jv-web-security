package mate.service;

import mate.dao.DriverDao;
import mate.exception.AuthenticationException;
import mate.lib.Inject;
import mate.lib.Service;
import mate.model.Driver;

import java.util.Optional;

@Service
public class AuthenticationServiceImpl implements AuthenticationService{
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> driver = driverService.findByLogin(login);
        if(driver.isEmpty()){
       throw new ArithmeticException("User name or password was incorrect");
   }
        if(driver.get().getPassword().equals(password)){
            return driver.get();
        }
        throw new ArithmeticException("User name or password was incorrect");
    }
}
