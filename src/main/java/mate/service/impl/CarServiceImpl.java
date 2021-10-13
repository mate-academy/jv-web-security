package mate.service.impl;

import java.util.List;
import java.util.NoSuchElementException;
import mate.dao.CarDao;
import mate.exception.DataProcessingException;
import mate.lib.Inject;
import mate.lib.Service;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;

@Service
public class CarServiceImpl implements CarService {
    @Inject
    private CarDao carDao;

    @Override
    public Car create(Car car) {
        return carDao.create(car);
    }

    @Override
    public Car get(Long id) {
        try {
            return carDao.get(id).orElseThrow();
        } catch (NoSuchElementException e) {
            throw new DataProcessingException("Don't exist Car dy id " + id, e);
        }
    }

    @Override
    public List<Car> getAll() {
        return carDao.getAll();
    }

    @Override
    public Car update(Car car) {
        return carDao.update(car);
    }

    @Override
    public boolean delete(Long id) {
        return carDao.delete(id);
    }

    @Override
    public void addDriverToCar(Driver driver, Car car) {
        List<Driver> drivers = car.getDrivers();
        for (Driver driverForCar : drivers) {
            if (driverForCar.getLicenseNumber().equals(driver.getLicenseNumber())) {
                return;
            }
        }
        car.getDrivers().add(driver);
        carDao.update(car);
    }

    @Override
    public void removeDriverFromCar(Driver driver, Car car) {
        List<Driver> drivers = car.getDrivers();
        for (Driver driverForCar : drivers) {
            if (driverForCar.getLicenseNumber().equals(driver.getLicenseNumber())) {
                car.getDrivers().remove(driverForCar);
                carDao.update(car);
            }
        }
    }

    @Override
    public List<Car> getAllByDriver(Long driverId) {
        return carDao.getAllByDriver(driverId);
    }
}
