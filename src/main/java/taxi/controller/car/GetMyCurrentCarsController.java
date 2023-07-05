package taxi.controller.car;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.model.Car;
import taxi.service.CarService;

@WebServlet(urlPatterns = "/cars/my")
public class GetMyCurrentCarsController extends HttpServlet {
    private static final Injector INJECTOR = Injector.getInstance("taxi");

    private final CarService carService = (CarService) INJECTOR.getInstance(CarService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long driverId = (Long) req.getSession().getAttribute("driverId");
        List<Car> myCars = carService.getAllByDriver(driverId);
        req.setAttribute("cars", myCars);
        req.getRequestDispatcher("/WEB-INF/views/cars/all.jsp").forward(req, resp);
    }
}
