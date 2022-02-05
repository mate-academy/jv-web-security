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

@WebServlet(urlPatterns = "/drivers/myCars")
public class GetMyCurrentCarsController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final CarService carService = (CarService) injector
            .getInstance(CarService.class);
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Car> allCars = carService.getAll();
        HttpSession session = req.getSession();
        Long userId = (Long) session.getAttribute("user_id");
        Driver driverUser = driverService.get(userId);
        List<Car> userCars = new ArrayList<>();

        for (Car car : allCars) {
            List<Driver> drivers = car.getDrivers();
            for (Driver driver : drivers) {
                if (driver.equals(driverUser)) {
                    userCars.add(car);
                }
            }
        }
        req.setAttribute("cars", userCars);
        req.getRequestDispatcher("/WEB-INF/views/cars/all.jsp").forward(req, resp);
    }
}
