package taxi.service;

import taxi.model.Driver;

public interface AuthenticationService {
    public Driver login(String login, String password);
}
