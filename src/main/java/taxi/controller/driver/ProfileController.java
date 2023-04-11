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

public class ProfileController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long driveId = (Long) req.getSession().getAttribute("driver_id");
        req.setAttribute("driver", driverService.get(driveId));
        req.setAttribute("users_cars", carService.getAllByDriver(driveId));
        req.setAttribute("all_cars", carService.getAll());
        req.getRequestDispatcher("/WEB-INF/views/profile.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String carId = req.getParameter("car_id");
        Long driverId = (Long) req.getSession().getAttribute("driver_id");
        Driver driver = driverService.get(driverId);
        Car car = carService.get(Long.parseLong(carId));
        carService.addDriverToCar(driver, car);
        resp.sendRedirect(req.getContextPath() + "/profile");
    }
}
