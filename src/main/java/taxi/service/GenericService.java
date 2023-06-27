package taxi.service;

import java.util.List;
import java.util.Optional;

public interface GenericService<T> {

    T create(T element);

    T get(Long id);

    List<T> getAll();

    T update(T element);

    Optional<T> findByLogin(String login);

    boolean delete(Long id);
}
