package taxi.controller.car;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import taxi.lib.Injector;
import taxi.model.Car;
import taxi.service.CarService;

public class DeleteCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private static final Logger logger =
            LogManager.getLogger(DeleteCarController.class);
    private final CarService carService = (CarService) injector.getInstance(CarService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Car car = carService.get(Long.parseLong(req.getParameter("id")));
        carService.delete(car.getId());
        logger.info("Successfully deleted from list car with id: "
                + car.getId());
        resp.sendRedirect(req.getContextPath() + "/cars");
    }
}
