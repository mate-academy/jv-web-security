package taxi.controller.driver;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import taxi.lib.Injector;
import taxi.service.CarService;
import taxi.service.DriverService;

public class GetMyCurrentCarsController extends HttpServlet {
    private static final Injector injector = Injector
            .getInstance("taxi");
    private static final CarService carService = (CarService) injector
            .getInstance(CarService.class);
    private static final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        HttpSession session = req.getSession();
        Long driverId = (Long) session.getAttribute("driverId");
        req.setAttribute("cars", carService.getAllByDriver(driverId));
        req.getRequestDispatcher("/views/cars/all.jsp").forward(req, resp);
    }
}
