package taxi.service;

import taxi.exception.AuthenticatingException;
import taxi.model.Driver;

public interface AuthenticationService {
    Driver login(String login, String password) throws AuthenticatingException;
}
