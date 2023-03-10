package taxi.controller.driver;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import taxi.lib.Injector;
import taxi.model.Car;
import taxi.model.Driver;
import taxi.service.CarService;
import taxi.service.DriverService;

@WebServlet(urlPatterns = "/drivers/cars")
public class GetMyCurrentCarsController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Car> currentCars = new ArrayList<>();
        List<Car> cars = carService.getAll();
        HttpSession session = req.getSession();
        Long driverId = (Long) session.getAttribute("driver_id");
        Driver driver = driverService.get(driverId);
        for (Car car: cars) {
            List<Driver> drivers = car.getDrivers();
            if (drivers.contains(driver)) {
                currentCars.add(car);
            }
        }
        req.setAttribute("cars", currentCars);
        req.getRequestDispatcher("/WEB-INF/views/drivers/cars.jsp").forward(req, resp);
    }
}
