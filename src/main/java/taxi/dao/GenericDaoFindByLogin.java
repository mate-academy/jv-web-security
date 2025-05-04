package taxi.dao;

import java.util.Optional;

public interface GenericDaoFindByLogin<T> {
    Optional<T> findByLogin(String login);
}
