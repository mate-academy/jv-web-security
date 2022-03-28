package taxi.service;

import taxi.exception.AuthenticationException;
import taxi.model.Driver;

public interface AuthenticationService {
    Driver login(String login, String password) throws AuthenticationException;

    boolean validationPassword(String password, String confirmPassword);
}
