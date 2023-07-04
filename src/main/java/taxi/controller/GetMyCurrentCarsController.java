package taxi.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import taxi.dao.CarDao;
import taxi.lib.Injector;
import taxi.model.Car;

public class GetMyCurrentCarsController extends HttpServlet {

    private static final Injector injector = Injector.getInstance("taxi");

    private final CarDao carDao =
            (CarDao) injector.getInstance(CarDao.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        HttpSession session = req.getSession();
        Long driverId = (Long) session.getAttribute("driver_id");

        List<Car> carsId = new ArrayList<>();

        for (Car car : carDao.getAll()) {
            if (driverId.equals(car.getDrivers().stream().findFirst().get().getId())) {
                carsId.add(car);
            }
        }

        req.setAttribute("cars", carsId);
        req.getRequestDispatcher("/WEB-INF/views/cars/all.jsp").forward(req, resp);
    }
}

