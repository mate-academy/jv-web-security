package taxi.dao.car;

import java.util.List;
import taxi.dao.GenericDao;
import taxi.model.Car;

public interface CarDao extends GenericDao<Car> {
    List<Car> getAllByDriver(Long driverId);
}
