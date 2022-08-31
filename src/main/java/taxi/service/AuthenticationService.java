package taxi.service;

import javax.naming.AuthenticationException;
import taxi.model.User;

public interface AuthenticationService {
    User login(String login, String password) throws AuthenticationException;
}
