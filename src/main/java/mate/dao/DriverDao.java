package mate.dao;

import java.util.List;
import java.util.Optional;
import mate.model.Car;
import mate.model.Driver;

public interface DriverDao extends GenericDao<Driver> {
    Optional<Driver> getByLogin(String login);

    List<Car> getAllCarsByDriverId(Long carId);
}
