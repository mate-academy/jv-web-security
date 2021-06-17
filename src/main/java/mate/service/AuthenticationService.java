package mate.service;

import mate.lib.exception.AuthenticationException;

public interface AuthenticationService<T> {
    T login(String login, String password) throws AuthenticationException;
}
