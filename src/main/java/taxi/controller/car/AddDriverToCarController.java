package taxi.controller.car;

import java.io.IOException;
import java.util.NoSuchElementException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.exception.DataProcessingException;
import taxi.lib.Injector;
import taxi.model.Car;
import taxi.model.Driver;
import taxi.service.CarService;
import taxi.service.DriverService;

public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/cars/drivers/add.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        long driverId = Long.parseLong(req.getParameter("driver_id"));
        long carId = Long.parseLong(req.getParameter("car_id"));
        Driver driver = new Driver();
        Car car = new Car();
        try {
            driver = driverService.get(driverId);
            car = carService.get(carId);
        } catch (NoSuchElementException e) {
            req.setAttribute("errorMsg", e.getMessage());
            try {
                req.getRequestDispatcher("/WEB-INF/views/cars/drivers/add.jsp").forward(req, resp);
            } catch (ServletException ex) {
                throw new RuntimeException(ex);
            }
        }
        try {
            carService.addDriverToCar(driver, car);
            resp.sendRedirect(req.getContextPath() + "/cars/drivers/add");
        } catch (DataProcessingException e) {
            req.setAttribute("errorMsg", "Can't not insert driver ID=" + driverId
                    + " to car ID=" + carId);
            try {
                req.getRequestDispatcher("/WEB-INF/views/cars/drivers/add.jsp").forward(req, resp);
            } catch (ServletException ex) {
                throw new RuntimeException(ex);
            }
        }
    }
}
