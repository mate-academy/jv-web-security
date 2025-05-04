package taxi.service;

import taxi.exception.LoginProcessingException;
import taxi.model.Driver;

public interface AuthenticationService {
    Driver login(String login, String password) throws LoginProcessingException;
}
