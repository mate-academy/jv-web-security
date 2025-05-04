package mate.dao;

import java.util.List;
import mate.model.Car;
import mate.model.Driver;

public interface CarDao extends GenericDao<Car> {
    List<Car> getAllByDriver(Long driverId);

    List<Driver> getAllByCar(Long carId);
}
