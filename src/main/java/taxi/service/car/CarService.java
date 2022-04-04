package taxi.service.car;

import java.util.List;
import taxi.model.Car;
import taxi.model.Driver;
import taxi.service.GenericService;

public interface CarService extends GenericService<Car> {
    void addDriverToCar(Driver driver, Car car);

    void removeDriverFromCar(Driver driver, Car car);

    List<Car> getAllByDriver(Long driverId);
}
