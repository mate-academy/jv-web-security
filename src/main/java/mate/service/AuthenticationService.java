package mate.service;

import mate.exception.AuthenticationException;
import mate.model.User;

public interface AuthenticationService {
    User login(String username, String password) throws AuthenticationException;
}
