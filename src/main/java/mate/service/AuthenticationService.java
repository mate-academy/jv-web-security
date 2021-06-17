package mate.service;

import mate.controller.exception.AuthenticationException;
import mate.model.Driver;

public interface AuthenticationService {
    Driver login(String login, String password) throws AuthenticationException;
}
