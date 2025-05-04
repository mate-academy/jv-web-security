package taxi.controller.cabinet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.model.Car;
import taxi.model.Driver;
import taxi.service.CarService;
import taxi.service.DriverService;

public class GetMyCurrentCarsController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);
    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long driverId = (Long) req.getSession().getAttribute("driver_id");
        Driver driver = driverService.get(driverId);
        List<Car> cars = carService.getAll();
        List<Car> driverCars = carService.getAllByDriver(driverId);
        req.setAttribute("driver", driver);
        req.setAttribute("cars", cars);
        req.setAttribute("driverCars", driverCars);
        req.getRequestDispatcher("WEB-INF/views/cabinet/all.jsp").forward(req, resp);
    }
}
