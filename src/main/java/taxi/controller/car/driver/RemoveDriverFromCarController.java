package taxi.controller.car.driver;

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

@WebServlet(urlPatterns = "/cars/drivers/remove")
public class RemoveDriverFromCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final CarService carService = (CarService)
            injector.getInstance(CarService.class);
    private final DriverService driverService = (DriverService)
            injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/drivers/remove.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        long carId = Long.parseLong(req.getParameter("car_id"));
        long driverId = Long.parseLong(req.getParameter("driver_id"));
        Car car = carService.get(carId);
        Driver driver = driverService.get(driverId);
        carService.removeDriverFromCar(driver, car);
        resp.sendRedirect(req.getContextPath() + "/cars/drivers/remove");
    }
}
