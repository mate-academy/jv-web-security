package taxi.controller.driver;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.dao.impl.CarDaoImpl;
import taxi.lib.Injector;
import taxi.model.Car;
import taxi.model.Driver;
import taxi.service.CarService;
import taxi.service.DriverService;
import taxi.service.impl.CarServiceImpl;
import taxi.service.impl.DriverServiceImpl;

public class DeleteCarFromDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String carId = req.getParameter("car_id");
        Long driverId = (Long) req.getSession().getAttribute("driver_id");
        Driver driver = driverService.get(driverId);
        Car car = carService.get(Long.parseLong(carId));
        System.out.println("carId:" + carId + " driverId:" + driverId);
        System.out.println("car.drivers" + car.getDrivers());
        System.out.println("driver" + driver);
        carService.removeDriverFromCar(driver, car);
        resp.sendRedirect(req.getContextPath() + "/profile");
    }
}
