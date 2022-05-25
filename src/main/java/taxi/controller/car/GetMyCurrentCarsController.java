package taxi.controller.car;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.model.Car;
import taxi.service.entity.CarService;

public class GetMyCurrentCarsController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final CarService carService =
            (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long driverId = (Long) request.getSession().getAttribute("driverId");
        List<Car> allCars = carService.getAllByDriver(driverId);
        request.setAttribute("cars", allCars);
        request.getRequestDispatcher("/WEB-INF/views/cars/all.jsp").forward(request, response);
    }
}
