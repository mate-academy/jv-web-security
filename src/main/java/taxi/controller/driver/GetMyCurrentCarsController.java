package taxi.controller.driver;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.model.Car;
import taxi.service.CarService;

public class GetMyCurrentCarsController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String name = (String) req.getSession().getAttribute("driver_name");
        req.setAttribute("name", name);
        List<Car> cars = carService
                .getAllByDriver((Long) req.getSession().getAttribute("driver_id"));
        req.setAttribute("cars", cars);
        req.getRequestDispatcher("/WEB-INF/views/cars/drivers/current.jsp").forward(req, resp);
    }
}
