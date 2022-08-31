package taxi.service;

import javax.naming.AuthenticationException;
import taxi.model.Driver;
import taxi.model.User;

public interface RegisterService {
    User register(String login, String password, String repeatPassword, Driver driver)
            throws AuthenticationException;
}
