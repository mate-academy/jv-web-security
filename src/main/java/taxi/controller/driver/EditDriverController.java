package taxi.controller.driver;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.model.Driver;
import taxi.service.DriverService;

@WebServlet(urlPatterns = "/drivers/edit")
public class EditDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Driver driver = driverService.get(Long.parseLong(req.getParameter("id")));
        req.setAttribute("id", driver.getId());
        req.setAttribute("name", driver.getName());
        req.setAttribute("license_number", driver.getLicenseNumber());
        req.getRequestDispatcher("/WEB-INF/views/drivers/edit.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long id = Long.parseLong(req.getParameter("id"));
        Driver driver = driverService.get(id);
        driver.setName(req.getParameter("name"));
        driver.setLicenseNumber(req.getParameter("license_number"));
        driverService.update(driver);
        resp.sendRedirect(req.getContextPath() + "/drivers");
    }
}
