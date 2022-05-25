package taxi.service;

import taxi.model.Driver;

public interface DriverService extends GenericService<Driver> {
    public Driver findByLogin(String login);
}
