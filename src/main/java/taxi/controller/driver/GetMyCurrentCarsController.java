package taxi.controller.driver;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.dao.CarDao;
import taxi.lib.Injector;
import taxi.model.Car;

public class GetMyCurrentCarsController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final CarDao carDao = (CarDao) injector.getInstance(CarDao.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long driverId = (Long) req.getSession().getAttribute("driver_id");
        List<Car> allCars = carDao.getAllByDriver(driverId);
        req.setAttribute("cars", allCars);
        req.getRequestDispatcher("/WEB-INF/views/drivers/cars/all.jsp").forward(req, resp);
    }
}
