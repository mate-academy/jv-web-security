package mate.controller.driver.in.car;

import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;
import mate.service.CarService;
import mate.service.DriverService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/cars/drivers/add")
public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("id"));
        req.setAttribute("car", carService.get(id));
        req.setAttribute("driversNotFromCar", carService.getAllDriversNotOfCar(id));
        req.getRequestDispatcher("/WEB-INF/views/driver_in_car/addDriverToCar.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Long carId = Long.valueOf(req.getParameter("id"));
        Long driverId = Long.valueOf(req.getParameter("driver_id"));
        Car car = carService.get(carId);
        Driver driver = driverService.get(driverId);
        carService.addDriverToCar(driver, car);
        resp.sendRedirect("/cars");
    }
}
