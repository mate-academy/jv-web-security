package taxi.service;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;
import static org.mockito.Mockito.when;
import taxi.model.Driver;
import taxi.dao.CarDao;
import taxi.model.Car;

class CarServiceImplTest {
    private CarDao carDao;
    private CarService carService;

    @BeforeEach
    public void setUp() {
        carDao = Mockito.mock(CarDao.class);
        carService = new CarServiceImpl(carDao);
    }

    @Test
    public void testAddDriverToCar() {
        Driver driver = new Driver();
        Car car = new Car();
        car.setDrivers(new ArrayList<>());

        carService.addDriverToCar(driver, car);

        Assertions.assertEquals(1, car.getDrivers().size());
        Assertions.assertEquals(driver, car.getDrivers().get(0));
        Mockito.verify(carDao).update(car);
    }

    @Test
    public void testRemoveDriverFromCar() {
        Driver driver = new Driver();
        Car car = new Car();
        List<Driver> drivers = new ArrayList<>();
        drivers.add(driver);
        car.setDrivers(drivers);

        carService.removeDriverFromCar(driver, car);

        Assertions.assertTrue(car.getDrivers().isEmpty());
        Mockito.verify(carDao).update(car);
    }

    @Test
    public void testGetAllByDriver() {
        Long driverId = 1L;
        List<Car> cars = new ArrayList<>();
        cars.add(new Car());
        cars.add(new Car());
        when(carDao.getAllByDriver(driverId)).thenReturn(cars);

        List<Car> result = carService.getAllByDriver(driverId);

        Assertions.assertEquals(cars, result);
        Mockito.verify(carDao).getAllByDriver(driverId);
    }

    @Test
    public void testCreate() {
        Car car = new Car();
        when(carDao.create(car)).thenReturn(car);

        Car result = carService.create(car);

        Assertions.assertEquals(car, result);
        Mockito.verify(carDao).create(car);
    }

    @Test
    public void testGet() {
        Long id = 1L;
        Car car = new Car();
        when(carDao.get(id)).thenReturn(Optional.of(car));

        Car result = carService.get(id);

        Assertions.assertEquals(car, result);
        Mockito.verify(carDao).get(id);
    }

    @Test
    public void testGetNoSuchElementException() {
        Long id = 1L;
        when(carDao.get(id)).thenReturn(Optional.empty());

        Assertions.assertThrows(NoSuchElementException.class, () -> carService.get(id));
        Mockito.verify(carDao).get(id);
    }

    @Test
    public void testGetAll() {
        List<Car> cars = new ArrayList<>();
        cars.add(new Car());
        cars.add(new Car());
        when(carDao.getAll()).thenReturn(cars);

        List<Car> result = carService.getAll();

        Assertions.assertEquals(cars, result);
        Mockito.verify(carDao).getAll();
    }

    @Test
    public void testUpdate() {
        Car car = new Car();
        when(carDao.update(car)).thenReturn(car);

        Car result = carService.update(car);

        Assertions.assertEquals(car, result);
        Mockito.verify(carDao).update(car);
    }

    @Test
    public void testDelete() {
        Long id = 1L;
        when(carDao.delete(id)).thenReturn(true);

        boolean result = carService.delete(id);

        Assertions.assertTrue(result);
        Mockito.verify(carDao).delete(id);
    }
}
