package mate.service;

import mate.exception.AuthenticationExcception;
import mate.model.Driver;

public interface AuthenticationService {
    Driver login(String login, String password) throws AuthenticationExcception;
}
