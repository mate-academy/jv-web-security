package mate.dao.impl;

import java.util.Optional;
import mate.dao.UserDao;
import mate.lib.Dao;
import mate.model.User;

@Dao
public class UserDaoImpl implements UserDao {
    @Override
    public Optional<User> findByUserName(String username) {
        return Optional.of(new User(1L, username, "1234567890"));
    }
}
