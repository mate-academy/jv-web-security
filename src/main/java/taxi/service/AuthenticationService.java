package taxi.service;

import taxi.lib.Service;
import taxi.model.Driver;

public interface AuthenticationService {
    Driver login(String login, String password);
}
