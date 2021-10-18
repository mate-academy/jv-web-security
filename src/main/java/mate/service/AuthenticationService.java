package mate.service;

import mate.exception.AuthenticationException;
import mate.model.Driver;

public interface AuthenticationService {
    Driver login(String driverName, String password) throws AuthenticationException;
}
