package mate.service;

import mate.exception.AuthenticationException;
import mate.model.Driver;

public interface AuthService {
    Driver login(String login, String password) throws AuthenticationException;
}
