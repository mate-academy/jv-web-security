package mate.controller.update;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

@WebServlet(urlPatterns = "/drivers/update")
public class UpdateDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("id"));
        req.setAttribute("driver", driverService.get(id));
        req.getRequestDispatcher("/WEB-INF/views/update/updateDriver.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Long id = Long.valueOf(req.getParameter("id"));
        Driver driver = driverService.get(id);
        String name = req.getParameter("name");
        String licenseNumber = req.getParameter("license_number");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        driver.setName(name);
        driver.setLicenseNumber(licenseNumber);
        driver.setUsername(username);
        driver.setPassword(password);
        driverService.update(driver);
        resp.sendRedirect("/drivers");
    }
}
