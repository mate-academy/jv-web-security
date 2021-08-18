package mate.service;

import java.util.List;
import java.util.Optional;
import mate.model.Driver;

public interface DriverService extends GenericService<Driver> {
    Optional<Driver> findByLogin(String login);

    Driver create(Driver driver);

    Driver get(Long id);

    List<Driver> getAll();

    Driver update(Driver driver);

    boolean delete(Long id);
}
