package mate.dao.impl;

import mate.dao.UserDao;
import mate.lib.Dao;
import mate.model.User;

import java.util.Optional;

@Dao
public class UserDaoImpl implements UserDao {
    @Override
    public Optional<User> findByUserName(String username) {
        return Optional.of(new User(username, "1234567890"));
    }
}
