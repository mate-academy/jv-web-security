package mate.service;

import java.util.Objects;
import mate.dao.DriverDao;
import mate.exception.AuthenticationException;
import mate.lib.Inject;
import mate.lib.Service;
import mate.model.Driver;

@Service
public class AuthServiceImpl implements AuthService {

    public static final String AUTH_ERROR
            = "Could not authenticate Driver with designated credentials.";

    @Inject
    private DriverDao driverDao;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Driver found = driverDao.getByLogin(login)
                .orElseThrow(() -> new AuthenticationException(AUTH_ERROR));
        if (found.getPassword() == null || !Objects.equals(found.getPassword(), password)) {
            throw new AuthenticationException(AUTH_ERROR);
        }
        return found;
    }
}
