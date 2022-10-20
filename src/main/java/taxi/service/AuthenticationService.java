package taxi.service;

import taxi.exception.AuthenticationException;
import taxi.model.Driver;

public interface AuthenticationService {
    void register(Driver driver, String repeatPassword) throws AuthenticationException;

    Driver login(String email, String password) throws AuthenticationException;
}
