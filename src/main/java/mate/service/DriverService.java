package mate.service;

import java.util.Optional;
import mate.model.Driver;

public interface DriverService extends GenericService<Driver> {
    Optional<Driver> getDriverByLogin(String login);
}
