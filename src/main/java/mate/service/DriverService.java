package mate.service;

import mate.exception.AuthenticationException;
import mate.model.Driver;

public interface DriverService extends GenericService<Driver> {
    Driver findByLogin(String login) throws AuthenticationException;
}
