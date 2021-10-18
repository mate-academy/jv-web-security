package mate.service;

import java.util.Optional;
import mate.model.Driver;

public interface DriverService extends GenericService<Driver> {
    public Optional<Driver> findByLogin(String username);
}
