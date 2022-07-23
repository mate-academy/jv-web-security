package taxi.service.service;

import taxi.exception.AuthenticationException;
import taxi.model.Driver;

public interface AuthenticationSevice {
    Driver login(String login, String password) throws AuthenticationException;
}
