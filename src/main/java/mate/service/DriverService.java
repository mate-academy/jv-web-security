package mate.service;

import mate.model.Driver;

public interface DriverService extends GenericService<Driver> {
    Driver getByLogin(String login);
}
