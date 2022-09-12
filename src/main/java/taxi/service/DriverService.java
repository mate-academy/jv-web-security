package taxi.service;

import java.util.Optional;
import taxi.model.Driver;

public interface DriverService extends GenericService<Driver> {
    Optional<Driver> findByLogin(String login);

    Driver register(String login, String password,
                    String repeatPassword, String name, String licenseNumber);
}
