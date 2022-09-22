package taxi.controller.car;

import java.io.IOException;
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

@WebServlet(urlPatterns = "/cars/drivers/delete")
public class DeleteDriversByCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Driver driver = driverService.get(Long.valueOf(req.getParameter("driver_id")));
        Car car = carService.get(Long.valueOf(req.getParameter("car_id")));
        carService.removeDriverFromCar(driver, car);
        resp.sendRedirect(req.getContextPath() + "/cars");
    }
}
