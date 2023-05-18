package taxi.service;

import java.util.Optional;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public interface DriverService extends GenericService<Driver> {
    Optional<Driver> findByLogin(String login);

}
