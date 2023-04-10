package taxi.controller.driver;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.model.Car;
import taxi.model.Driver;
import taxi.service.CarService;
import taxi.service.DriverService;

public class DeleteCarFromDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String carId = req.getParameter("car_id");
        Driver driver = driverService.get(Long.parseLong(req.getParameter("driver_id")));
        Car car = carService.get(Long.parseLong(carId));
        carService.removeDriverFromCar(driver, car);
        resp.sendRedirect(req.getContextPath() + "/profile");
    }
}
