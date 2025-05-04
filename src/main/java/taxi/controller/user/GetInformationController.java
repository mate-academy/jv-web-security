package taxi.controller.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.model.Driver;
import taxi.service.CarService;
import taxi.service.DriverService;

public class GetInformationController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);
    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Driver driver = driverService.get((Long) req.getSession().getAttribute("id"));
        req.setAttribute("driver", driver);
        req.setAttribute("driver_cars", carService.getAllByDriver(driver.getId()));
        req.setAttribute("all_cars", carService.getAll());
        req.getRequestDispatcher("/WEB-INF/views/drivers/cabinet.jsp").forward(req, resp);
    }
}
