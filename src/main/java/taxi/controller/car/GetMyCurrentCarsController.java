package taxi.controller.car;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;
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
        List<Car> cars = carService.getAll();
        Long driverId = (Long) req.getSession().getAttribute("driver_id");
        List<Car> myCars = cars.stream()
                .filter(car -> car.getDrivers().stream()
                        .anyMatch(driver -> driver.getId().equals(driverId)))
                .collect(Collectors.toList());
        req.setAttribute("cars", myCars);
        req.getRequestDispatcher("/WEB-INF/views/drivers/cars/all.jsp").forward(req, resp);
    }
}
