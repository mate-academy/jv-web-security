package taxi.service;

import taxi.exception.AuthenticationException;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public interface AuthenticationService {
    Driver login(String login, String password) throws AuthenticationException;
}
