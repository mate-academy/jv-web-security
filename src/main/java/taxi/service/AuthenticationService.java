package taxi.service;

import taxi.exception.DataProcessingException;
import taxi.model.Driver;

public interface AuthenticationService {
    Driver findDriverByLogin(String username, String password) throws DataProcessingException;
}
