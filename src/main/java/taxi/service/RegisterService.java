package taxi.service;

import taxi.exception.AuthenticationException;
import taxi.model.Driver;

public interface RegisterService {
    void register(Driver driver) throws AuthenticationException;

}
