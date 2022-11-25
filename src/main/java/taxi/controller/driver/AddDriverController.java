package taxi.controller.driver;

import java.io.IOException;
import javax.servlet.ServletException;
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
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String role = (String) req.getSession().getAttribute("role");
        req.setAttribute("is_admin", role.equals("admin"));
        req.getRequestDispatcher("/WEB-INF/views/drivers/add.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String name = req.getParameter("name");
        String licenseNumber = req.getParameter("license_number");
        Long driverId = (Long) req.getSession().getAttribute("driver_id");
        Driver driver = new Driver(name, licenseNumber);
        driver.setId(driverId);
        if (req.getSession().getAttribute("role").equals("admin")) {
            driverService.create(driver);
        } else {
            driverService.update(driver);
        }
        resp.sendRedirect(req.getContextPath() + "/drivers/add");
    }
}
