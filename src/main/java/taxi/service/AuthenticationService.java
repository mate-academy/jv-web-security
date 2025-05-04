package taxi.service;

import taxi.exception.AuthenticationException;
import taxi.model.Driver;

public interface AuthenticationService {

    Driver login(String name, String password) throws AuthenticationException;

    Driver register(String name, String password, String repeatPassword)
            throws AuthenticationException;
}
