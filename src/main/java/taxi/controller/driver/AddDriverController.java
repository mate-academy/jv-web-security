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

@WebServlet(urlPatterns = {"/drivers/add", "/signup"})
public class AddDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        if (req.getServletPath().equals("/signup")) {
            req.getRequestDispatcher("/WEB-INF/views/auth/signup.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("/WEB-INF/views/drivers/add.jsp").forward(req, resp);
        }
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Driver driver = new Driver();
        driver.setLicenseNumber(req.getParameter("license_number"));
        driver.setName(req.getParameter("name"));
        driver.setLogin(req.getParameter("login"));
        driver.setPassword(req.getParameter("password"));
        driverService.create(driver);
        if (req.getServletPath().equals("/signup")) {
            resp.sendRedirect(req.getContextPath() + "/");
        } else {
            resp.sendRedirect(req.getContextPath() + "/drivers");
        }
    }
}
