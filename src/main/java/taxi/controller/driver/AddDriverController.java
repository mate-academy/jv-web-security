package taxi.controller.driver;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.model.Driver;
import taxi.service.DriverService;

public class AddDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Driver driver = new Driver();
        driver.setLogin(req.getParameter("login"));
        driver.setPassword("password");
        driverService.create(driver);
        resp.sendRedirect(req.getContextPath() + "/drivers");
    }
}
