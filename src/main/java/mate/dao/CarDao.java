package mate.dao;

import java.util.List;
import java.util.Optional;

import mate.model.Car;
import mate.model.Driver;

public interface CarDao extends GenericDao<Car> {
    List<Car> getAllByDriver(Long driverId);
}
