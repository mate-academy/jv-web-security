package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.model.Manufacturer;
import mate.service.CarService;
import mate.service.DriverService;
import mate.service.ManufacturerService;

public class InjectDataController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        super.doGet(req, resp);
        ManufacturerService manufacturerService
                = (ManufacturerService) injector.getInstance(ManufacturerService.class);
        Manufacturer mtz = manufacturerService.create(new Manufacturer("BelAZ", "Belarus"));
        Manufacturer audi = manufacturerService.create(new Manufacturer("Audi", "Italy"));
        Manufacturer generalMotors = manufacturerService.create(new Manufacturer("GMT", "USA"));

        CarService carService
                = (CarService) injector.getInstance(CarService.class);
        Car belarusianCar = carService.create(new Car("Belaz", mtz));
        Car italianCar = carService.create(new Car("A8", audi));
        Car americanCar = carService.create(new Car("Cadillac", generalMotors));

        DriverService driverService
                = (DriverService) injector.getInstance(DriverService.class);
        Driver firsDriver = driverService.create(new Driver("Petya", "LYC1", "LYC1", "123"));
        Driver secondDriver = driverService.create(new Driver("Vasya", "LYC2", "LYC2", "123"));
        Driver thirdDriver = driverService.create(new Driver("Misha", "LYC3", "LYC3", "123"));
        Driver fourthDriver = driverService.create(new Driver("Masha", "LYC4", "LYC4", "123"));

        carService.addDriverToCar(firsDriver, belarusianCar);
        carService.addDriverToCar(secondDriver, italianCar);
        carService.addDriverToCar(thirdDriver, americanCar);
        carService.addDriverToCar(fourthDriver, americanCar);

        resp.sendRedirect("/index");
    }
}
