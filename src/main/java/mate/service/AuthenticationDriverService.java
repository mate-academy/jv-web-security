package mate.service;

import mate.lib.exception.AuthenticationException;
import mate.model.Driver;

public interface AuthenticationDriverService {
    Driver login(String login, String password) throws AuthenticationException;
}
