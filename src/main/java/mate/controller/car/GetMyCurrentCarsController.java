package mate.controller.car;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mate.lib.Injector;
import mate.model.Car;
import mate.service.CarService;

@WebServlet("/cars/current")
public class GetMyCurrentCarsController extends HttpServlet {
    private static final String SESSION_ATTRIBUTE_NAME = "driver_id";
    private static final Injector injector = Injector.getInstance("mate");
    private CarService carService;

    @Override
    public void init() throws ServletException {
        carService = (CarService) injector.getInstance(CarService.class);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        HttpSession session = req.getSession();
        Long driverId = (Long) session.getAttribute(SESSION_ATTRIBUTE_NAME);
        List<Car> carsByDriverId = carService.getAllByDriver(driverId);
        req.setAttribute("cars", carsByDriverId);
        req.getRequestDispatcher("/WEB-INF/views/cars/all.jsp").forward(req, resp);
    }
}
