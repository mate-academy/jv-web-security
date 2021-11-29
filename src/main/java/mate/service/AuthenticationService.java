package mate.service;

import mate.exception.AuthenticationException;
import mate.model.Driver;

public interface AuthenticationService {
    Driver login(String driverLogin, String driverPassword) throws AuthenticationException;
}
