package taxi.controller.car;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.model.Car;
import taxi.model.Driver;
import taxi.service.CarService;
import taxi.service.DriverService;

@WebServlet(urlPatterns = "/cars/drivers/add")
public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final CarService carService
            = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Car car = carService.get(Long.valueOf(req.getParameter("carId")));
        List<Driver> drivers = driverService.getAll();
        List<Driver> driversByCar = car.getDrivers();
        drivers.removeAll(driversByCar);
        if (drivers.size() > 0) {
            req.setAttribute("car", car);
            req.setAttribute("drivers", drivers);
            req.getRequestDispatcher("/WEB-INF/views/drivers/add-driver-to-car.jsp")
                    .forward(req, resp);
        } else {
            resp.sendRedirect(req.getContextPath() + "/cars");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long carId = Long.valueOf(req.getParameter("carId"));
        Car car = carService.get(carId);
        Long driverId = Long.valueOf(req.getParameter("driverId"));
        if (car.getDrivers().stream().filter(d -> d.getId() == driverId).count() == 0) {
            Driver driver = driverService.get(driverId);
            carService.addDriverToCar(driver, car);
        }
        resp.sendRedirect(req.getContextPath() + "/cars");
    }
}
