package taxi.service;

import taxi.exception.AuthenticationExeption;
import taxi.model.Driver;

public interface AuthenticationService {
    Driver login(String login, String password) throws AuthenticationExeption;
}
