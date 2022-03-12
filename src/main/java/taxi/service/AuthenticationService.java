package taxi.service;

import taxi.model.Driver;
import javax.security.sasl.AuthenticationException;

public interface AuthenticationService {
    Driver login(String login, String password) throws AuthenticationException;
}
