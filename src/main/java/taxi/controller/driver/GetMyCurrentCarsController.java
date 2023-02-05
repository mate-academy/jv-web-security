package taxi.controller.driver;

import taxi.lib.Injector;
import taxi.model.Car;
import taxi.service.CarService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class GetMyCurrentCarsController extends HttpServlet {
    private static final Injector inject = Injector.getInstance("taxi");
    private final CarService carService = (CarService) inject.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Car> carsList = carService.getAllByDriver((Long) req.getSession().getAttribute("driverId"));
        req.setAttribute("cars", carsList);
        req.getRequestDispatcher("/WEB-INF/views/drivers/cars/all.jsp").forward(req, resp);
    }
}
