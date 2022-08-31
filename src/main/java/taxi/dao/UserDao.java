package taxi.dao;

import java.util.Optional;
import taxi.model.User;

public interface UserDao extends GenericDao<User> {
    Optional<User> getByLogin(String login);
}
