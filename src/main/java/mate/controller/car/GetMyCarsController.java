package mate.controller.car;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;

@WebServlet(urlPatterns = "/cars/mycars")
public class GetMyCarsController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarService carService = (CarService) injector
            .getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long id = (Long) req.getSession().getAttribute("driver_id");
        List<Car> allCars = carService.getAllByDriver(id);
        req.setAttribute("cars", allCars);
        req.getRequestDispatcher("/WEB-INF/views/cars/all.jsp").forward(req, resp);
    }
}
