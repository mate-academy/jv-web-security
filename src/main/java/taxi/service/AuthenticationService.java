package taxi.service;

import taxi.exception.CustomAuthenticationException;
import taxi.model.Driver;

public interface AuthenticationService {
    Driver login(String login, String password) throws CustomAuthenticationException;
}
