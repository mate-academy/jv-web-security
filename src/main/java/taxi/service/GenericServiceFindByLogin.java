package taxi.service;

import java.util.Optional;

public interface GenericServiceFindByLogin<T> {
    Optional<T> findByLogin(String login);
}
