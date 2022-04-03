package taxi.service;

import taxi.model.Driver;
import taxi.exception.AuthenticationException;


public interface AuthenticationService {
    Driver login(String login, String password) throws AuthenticationException;
}
