package taxi.controller.car;

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
        Long driverId = (Long) req.getSession().getAttribute("driver_id");
        List<Car> carsById = carService.getAllByDriver(driverId);
        String h1 = "My all cars";
        req.setAttribute("h1", h1);
        req.setAttribute("cars", carsById);
        req.getRequestDispatcher("/WEB-INF/views/cars/all.jsp").forward(req, resp);
    }
}
