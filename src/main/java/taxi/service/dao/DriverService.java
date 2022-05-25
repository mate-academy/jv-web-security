package taxi.service.dao;

import java.util.Optional;
import taxi.model.Driver;

public interface DriverService extends GenericService<Driver> {
    Optional<Driver> findByLogin(String login);
}
