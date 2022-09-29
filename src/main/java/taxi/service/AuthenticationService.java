package taxi.service;

import taxi.exception.AuthnticationException;
import taxi.model.Driver;

public interface AuthenticationService {
    Driver login(String login, String password) throws AuthnticationException;
}
