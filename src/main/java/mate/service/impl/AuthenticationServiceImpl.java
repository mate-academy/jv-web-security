package mate.service.impl;

import mate.dao.UserDao;
import mate.exception.AuthenticationException;
import mate.lib.Inject;
import mate.lib.Service;
import mate.model.User;
import mate.service.AuthenticationService;

import java.util.Optional;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private UserDao userDao;

    @Override
    public User login(String username, String password) throws AuthenticationException {
        Optional<User> user = userDao.findByUserName(username);
        if (user.isEmpty()) {
            throw new AuthenticationException("Username or password was incorrect");
        }
        if (user.get().getPassword().equals(password)) {
            return user.get();
        }
        throw new AuthenticationException("Username or password was incorrect");
    }
}
