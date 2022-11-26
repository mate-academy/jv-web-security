package taxi.controller.car;

import taxi.lib.Injector;
import taxi.model.Car;
import taxi.service.CarService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

//display the list of cars for currently logged driver
// (get info about the driver from the HttpSession).
// Hint: Use existed JSP page for displaying all cars.
public class GetMyCurrentCarsController extends HttpServlet {
    private static final Injector INJECTOR = Injector.getInstance("taxi");
    private final CarService carService = (CarService) INJECTOR.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        HttpSession session = req.getSession();
        Long id = (Long) session.getAttribute("id");
        List<Car> cars = carService.getAllByDriver(id);
        req.setAttribute("cars", cars);
        req.getRequestDispatcher("/WEB-INF/views/cars/all.jsp").forward(req, resp);
    }
}
