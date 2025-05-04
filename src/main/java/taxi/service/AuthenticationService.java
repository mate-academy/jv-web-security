package taxi.service;

import taxi.exception.AuthentificationException;
import taxi.model.Driver;

public interface AuthenticationService {
    Driver login(String login, String password) throws AuthentificationException;
}
