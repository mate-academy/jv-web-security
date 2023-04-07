package taxi.service;

import taxi.model.Driver;

public interface DriverService extends GenericService<Driver> {
    Driver findByUsername(String username);
}
