package taxi.controller.car;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.model.Car;
import taxi.service.CarService;
import taxi.service.ManufacturerService;

public class AddCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService =
            (ManufacturerService) injector.getInstance(ManufacturerService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        long manufacturerId = Long.parseLong(req.getParameter("manufacturer_id"));
        Car car = new Car();
        car.setModel(req.getParameter("model"));
        car.setManufacturer(manufacturerService.get(manufacturerId));
        car.setDrivers(new ArrayList<>());
        carService.create(car);
        resp.sendRedirect(req.getContextPath() + "/cars");
    }
}
