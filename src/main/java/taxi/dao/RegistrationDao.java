package taxi.dao;

import java.util.Optional;
import taxi.model.Driver;

public interface RegistrationDao {
    Driver register(Driver driver);

    Optional<Driver> checkLogin(String login);
}
