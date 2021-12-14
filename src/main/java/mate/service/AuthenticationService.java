package mate.service;

import mate.exception.AuthenticationException;
import mate.model.Driver;

public interface AuthenticationService {
    public Driver login(String login, String password) throws AuthenticationException;
}
