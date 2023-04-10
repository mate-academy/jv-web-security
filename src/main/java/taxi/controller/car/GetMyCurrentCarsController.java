package taxi.controller.car;

import java.io.IOException;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.model.Car;
import taxi.service.CarService;

@WebServlet(urlPatterns = "/cars/my")
public class GetMyCurrentCarsController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final CarService carService = (CarService) injector
            .getInstance(CarService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long driverId = (Long) req.getSession().getAttribute("user_id");
        List<Car> cars = carService.getAll().stream()
                .filter(car -> car.getDrivers().stream()
                        .anyMatch(driver -> Objects.equals(driver.getId(), driverId)))
                .collect(Collectors.toList());
        req.setAttribute("cars", cars);
        req.getRequestDispatcher("/WEB-INF/views/cars/all_car_by_driver.jsp").forward(req, resp);
    }
}
