package taxi.service;

import taxi.exception.AuthenticationException;
import taxi.model.Driver;

public interface AuthenticationService {
    Driver login(String username, String password) throws AuthenticationException;

    boolean isValidLogin(String username);

    boolean isValidPassword(String password, String repeatPassword) throws AuthenticationException;

    boolean isValidData(String username, String password,
                        String repeatPassword, String name, String licenseNumber)
            throws AuthenticationException;
}
