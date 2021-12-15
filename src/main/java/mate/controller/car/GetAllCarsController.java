package mate.controller.car;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;

public class GetAllCarsController extends HttpServlet {
    private static final String ALL_CARS_JSP_PATH = "/WEB-INF/views/cars/all.jsp";
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector
            .getInstance(CarService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Car> allCars = carService.getAll();
        req.setAttribute("cars", allCars);
        req.getRequestDispatcher(ALL_CARS_JSP_PATH).forward(req, resp);
    }
}
