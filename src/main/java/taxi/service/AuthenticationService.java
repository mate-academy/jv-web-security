package taxi.service;

import taxi.exception.AutenticationException;
import taxi.model.Driver;

public interface AuthenticationService {
    Driver login(String login, String password) throws AutenticationException;

}
