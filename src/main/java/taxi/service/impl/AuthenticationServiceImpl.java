package taxi.service.impl;

import java.util.Optional;
import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;
import taxi.service.AuthenticationService;
import taxi.service.DriverService;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final String sqlInjectionPatten
            = "\\b(ALTER|CREATE|DELETE|DROP|EXEC(UTE){0,1}|INSERT( +INTO){0,1}"
            + "|MERGE|SELECT|UPDATE|UNION( +ALL){0,1})\\b";
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        if (password.matches(sqlInjectionPatten) | login.matches(sqlInjectionPatten)) {
            throw new AuthenticationException("Nice try, contact us"
                    + " if you succeed, pls");
        }
        Optional<Driver> driver = driverService.findByLogin(login);
        if (driver.isPresent() && driver.get().getPassword().equals(password)) {
            return driver.get();
        }
        throw new AuthenticationException("Invalid username and/or password");
    }
}
