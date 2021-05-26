package mate.service;

import java.util.List;
import java.util.Optional;
import mate.model.Car;
import mate.model.Driver;

public interface DriverService extends GenericService<Driver> {
    List<Car> getMyCurrentCars(Long id);

    Optional<Driver> checkLogin(String login);
}
