package taxi.dao;

import java.util.Optional;
import taxi.model.User;

public class UserDaoImpl implements UserDao {

    @Override
    public Optional<User> findByUsername(String username) {
        return Optional.of(new User(username, "1234"));
    }
}
