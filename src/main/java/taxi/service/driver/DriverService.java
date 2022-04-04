package taxi.service.driver;

import java.util.Optional;
import taxi.model.Driver;
import taxi.service.GenericService;

public interface DriverService extends GenericService<Driver> {
    Optional<Driver> findByLogin(String login);
}
