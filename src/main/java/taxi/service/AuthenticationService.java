package taxi.service;

import taxi.model.Driver;

import javax.security.auth.login.LoginException;

public interface AuthenticationService {
    Driver login(String login, String password) throws LoginException;
}
