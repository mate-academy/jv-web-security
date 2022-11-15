package taxi.service;

import java.util.Optional;

import taxi.exception.*;
import taxi.model.Driver;

public interface DriverService extends GenericService<Driver> {
    Driver findByLogin(String login);
}
