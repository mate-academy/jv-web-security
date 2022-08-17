package taxi.service;

import java.util.Optional;
import taxi.exception.AuthenticationException;
import taxi.model.Driver;

public interface AuthenticationService {
    Optional<Driver> login(String login, String password) throws AuthenticationException;
}
