package taxi.service;

import taxi.exception.AuthenticationException;
import taxi.model.Driver;

public interface RegisterService {
    Driver register(String name, String licenseNumber,
                    String login, String password, String repeatPassword)
            throws AuthenticationException;
}
