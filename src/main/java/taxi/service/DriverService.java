package taxi.service;

import taxi.model.Driver;

import java.util.Optional;

public interface DriverService extends GenericService<Driver> {
    Optional<Driver> findByLogin(String login);
}
