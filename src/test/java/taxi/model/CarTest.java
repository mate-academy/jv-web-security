package taxi.model;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import java.util.ArrayList;
import java.util.List;

class CarTest {
    @Test
    void testConstructor() {
        String model = "Camry";
        Manufacturer manufacturer = new Manufacturer("Toyota", "Ukraine");
        Car car = new Car(model, manufacturer);

        Assertions.assertNull(car.getId());
        Assertions.assertEquals(model, car.getModel());
        Assertions.assertEquals(manufacturer, car.getManufacturer());
        Assertions.assertTrue(car.getDrivers().isEmpty());
    }

    @Test
    void testSettersAndGetters() {
        Long id = 1L;
        String model = "Camry";
        Manufacturer manufacturer = new Manufacturer("Toyota", "Ukraine");
        List<Driver> drivers = new ArrayList<>();
        drivers.add(new Driver("John Doe", "johndoe","johndoe", "password"));

        Car car = new Car();
        car.setId(id);
        car.setModel(model);
        car.setManufacturer(manufacturer);
        car.setDrivers(drivers);

        Assertions.assertEquals(id, car.getId());
        Assertions.assertEquals(model, car.getModel());
        Assertions.assertEquals(manufacturer, car.getManufacturer());
        Assertions.assertEquals(drivers, car.getDrivers());
    }
}