package mate.dao;

import java.util.Optional;
import mate.model.User;

public interface UserDao {
    Optional<User> findByUserName(String username);
}
