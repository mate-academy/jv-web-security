package taxi.service;

import java.util.Optional;
import taxi.exception.AuthenticationException;
import taxi.model.Driver;

public interface DriverService extends GenericService<Driver> {
    Optional<Driver> findByLogin(String login) throws AuthenticationException;
}
