package taxi.service;

import taxi.exception.AuthenticationException;
import taxi.model.Driver;

import java.util.Optional;

public interface AuthenticationService {
    Optional<Driver> login(String login, String password) throws AuthenticationException;
}
