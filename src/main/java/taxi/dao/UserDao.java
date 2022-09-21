package taxi.dao;

import java.util.Optional;
import taxi.model.User;

public interface UserDao {
    Optional<User> findByUsername(String username);
}
