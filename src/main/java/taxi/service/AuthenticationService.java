package taxi.service;

import taxi.exception.AuthenticationEsception;
import taxi.model.Driver;

public interface AuthenticationService {
    Driver login(String login, String password) throws AuthenticationEsception;
}
