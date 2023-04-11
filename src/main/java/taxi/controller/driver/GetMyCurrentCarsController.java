package taxi.controller.driver;

import taxi.lib.Injector;
import taxi.service.CarService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GetMyCurrentCarsController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private static final CarService carService
            = (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long userId = (Long) req.getSession().getAttribute("user_id");
        req.setAttribute("cars", carService.getAllByDriver(userId));
        req.getRequestDispatcher("/WEB-INF/views/cars/cars.jsp").forward(req, resp);
    }
}
