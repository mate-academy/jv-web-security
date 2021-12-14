package mate.service;

import mate.exception.AuthenticationException;
import mate.model.Driver;

import java.util.Optional;

public interface AuthenticationService{
    Driver login(String login, String password) throws AuthenticationException;
}
