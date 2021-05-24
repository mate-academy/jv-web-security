package mate.controller.driver;

import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class GetMyCurrentCarsController extends HttpServlet {
    private static final String DRIVER_ID = "driverId";
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long currentDriverID = (Long) req.getSession().getAttribute(DRIVER_ID);
        List<Car> cars = carService.getAllByDriver(currentDriverID);
        req.setAttribute("cars", cars);
        req.getRequestDispatcher("/WEB-INF/views/cars/all.jsp").forward(req, resp);
    }
}
