package mate.controller.driver;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.DriverService;

@WebServlet("/drivers/add")
public class AddDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers/add.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        final Driver driver = new Driver();
        driver.setName(req.getParameter("name"));
        driver.setLicenseNumber(req.getParameter("licenseNumber"));
        driver.setLogin(req.getParameter("login"));
        driver.setPassword(req.getParameter("password"));
        driverService.create(driver);
        resp.sendRedirect(req.getContextPath() + "/");
    }
}
