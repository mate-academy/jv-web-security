package taxi.controller;

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

@WebServlet(urlPatterns = "/drivers/cars")
public class GetCarsForCurrentDriver extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private static final String GET_DRIVERS_CARS = "/WEB-INF/views/drivers/cars.jsp";
    private CarService carService =
            (CarService) injector.getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long driverId = (Long) req.getSession().getAttribute("driver_id");
        List<Car> cars = carService.getAllByDriver(driverId);
        req.setAttribute("cars", cars);
        req.getRequestDispatcher(GET_DRIVERS_CARS).forward(req, resp);
    }
}
