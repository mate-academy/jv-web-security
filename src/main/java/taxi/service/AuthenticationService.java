package taxi.service;

import taxi.model.Driver;

public interface AuthenticationService {

    Driver login(String login, String password) throws taxi.exception.AuthenticationService;

}
