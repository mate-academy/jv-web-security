package mate.controller.driver;

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

@WebServlet(urlPatterns = "/cars/current")
public class GetMyCurrentCarsController extends HttpServlet {
    private static final String PAGE_PATH = "/WEB-INF/views/cars/all.jsp";
    private static final Injector injector = Injector.getInstance("mate");
    private static final String USER_ID = "user_id";
    private CarService carService;

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        HttpSession session = req.getSession();
        Long userId = (Long) session.getAttribute(USER_ID);
        List<Car> userCars = carService.getAllByDriver(userId);
        req.setAttribute("cars", userCars);
        req.getRequestDispatcher(PAGE_PATH).forward(req, resp);
    }

    @Override
    public void init() {
        carService = (CarService) injector.getInstance(CarService.class);
    }
}
