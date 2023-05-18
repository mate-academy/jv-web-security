package taxi.service;

import java.util.Objects;
import java.util.Optional;
import taxi.dao.DriverDao;
import taxi.exception.AuthenticationException;
import taxi.lib.Injector;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverDao driverDao = (DriverDao) injector.getInstance(DriverDao.class);

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        if (Objects.nonNull(login) || Objects.nonNull(password)) {
            Optional<Driver> optionalDriver = driverDao.findByLogin(login);
            if (optionalDriver.isPresent()
                        && optionalDriver.get().getPassword().equals(password)) {
                return optionalDriver.get();
            }
        }
        throw new AuthenticationException("Login or password is incorrect");
    }
}
