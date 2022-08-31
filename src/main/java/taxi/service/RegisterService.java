package taxi.service;

import javax.naming.AuthenticationException;
import taxi.model.Driver;

public interface RegisterService {
    Driver register(String login, String password, String repeatPassword,
                    String name, String licenseNumber)
            throws AuthenticationException;
}
