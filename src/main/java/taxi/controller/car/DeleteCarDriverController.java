package taxi.controller.car;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.service.CarService;
import taxi.service.DriverService;

public class DeleteCarDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private static final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private static final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Long carId = Long.parseLong(req.getParameter("car_id"));
        Long driverId = Long.parseLong(req.getParameter("driver_id"));
        carService.removeDriverFromCar(driverService.get(driverId), carService.get(carId));
        resp.sendRedirect(req.getContextPath() + "/cars/drivers/add?car_id=" + carId);
    }
}
