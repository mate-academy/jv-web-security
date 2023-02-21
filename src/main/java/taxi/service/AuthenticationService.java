package taxi.service;

import taxi.exeption.AuthenticationException;
import taxi.model.Driver;

public interface AuthenticationService {
    Driver login(String driverName, String password) throws AuthenticationException;

}
