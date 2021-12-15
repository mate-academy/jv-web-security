package mate.controller.driver;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;

public class GetMyCurrentCarsController extends HttpServlet {
    private static final String GET_CURRENT_CARS_PATH = "/WEB-INF/views/cars/all.jsp";
    private static final String ATTRIBUTE_SESSION_ID = "driver_id";
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        HttpSession session = req.getSession();
        Long driverId = (Long) session.getAttribute(ATTRIBUTE_SESSION_ID);
        List<Car> userCars = carService.getAllByDriver(driverId);
        req.setAttribute("cars", userCars);
        req.getRequestDispatcher(GET_CURRENT_CARS_PATH).forward(req, resp);
    }
}
