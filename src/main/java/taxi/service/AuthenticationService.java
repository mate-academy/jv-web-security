package taxi.service;

import taxi.exception.AuthenticationServiceException;
import taxi.model.Driver;

public interface AuthenticationService {
    Driver login(String login, String password) throws AuthenticationServiceException;
}
