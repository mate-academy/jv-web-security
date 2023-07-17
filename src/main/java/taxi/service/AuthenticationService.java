package taxi.service;

import taxi.exception.AuthenticationException;
import taxi.model.Driver;

public interface AuthenticationService {
    Driver login(String driverName, String licenseNumber) throws AuthenticationException;
}
