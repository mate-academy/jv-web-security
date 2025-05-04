package taxi.controller.driver;

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

@WebServlet("/drivers/cars")
public class GetMyCurrentCarsController extends HttpServlet {
    private static final Injector inject = Injector.getInstance("taxi");
    private final CarService carService = (CarService) inject.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Car> carsList = carService.getAllByDriver((Long) req.getSession()
                .getAttribute("driverId"));
        req.setAttribute("cars", carsList);
        req.getRequestDispatcher("/WEB-INF/views/cars/all.jsp").forward(req, resp);
    }
}
