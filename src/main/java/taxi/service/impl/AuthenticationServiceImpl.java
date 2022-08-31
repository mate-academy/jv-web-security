package taxi.service.impl;

import java.util.Optional;
import javax.naming.AuthenticationException;
import taxi.dao.UserDao;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.User;
import taxi.service.AuthenticationService;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private UserDao userDao;

    @Override
    public User login(String login, String password) throws AuthenticationException {
        Optional<User> user = userDao.getByLogin(login);
        if (user.isEmpty()) {
            throw new AuthenticationException("Username or password was incorrect");
        }
        if (user.get().getPassword().equals(password)) {
            return user.get();
        }
        throw new AuthenticationException("Username or password was incorrect");
    }
}
