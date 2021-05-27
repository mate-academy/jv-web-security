package mate.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.dao.CarDao;
import mate.lib.Injector;
import mate.model.Car;
import mate.model.Driver;

@WebServlet("/cars/current")
public class GetMyCurrentCarsController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final CarDao carDao = (CarDao) injector.getInstance(CarDao.class);
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long driverId = (Long) req.getSession().getAttribute("driver_id");
        List<Car> allByDriver = carDao.getAllByDriver(driverId);
        String name = (String) req.getSession().getAttribute("driver_name");
        String licenseNumber = (String) req.getSession().getAttribute("driver_licenseNumber");
        Driver driver = new Driver(name, licenseNumber);
        driver.setId(driverId);
        List<Driver> driverList = new ArrayList<>();
        driverList.add(driver);
        for (Car car : allByDriver) {
            car.setDrivers(driverList);
        }
        req.setAttribute("cars", allByDriver);
        req.getRequestDispatcher("/WEB-INF/views/cars/all.jsp").forward(req, resp);
    }
}
