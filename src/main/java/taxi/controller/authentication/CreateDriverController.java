package taxi.controller.authentication;

import java.io.IOException;
import java.util.Optional;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.model.Driver;
import taxi.service.DriverService;

@WebServlet(urlPatterns = "/register")
public class CreateDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService = (DriverService)
            injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/authentication/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Driver driver = new Driver();
        driver.setName(req.getParameter("driver_name"));
        driver.setLicenseNumber(req.getParameter("license"));
        driver.setLogin(req.getParameter("driver_login"));
        Optional<Driver> driverFromDb = driverService.findByLogin(req.getParameter("driver_login"));
        if (driverFromDb.isPresent()) {
            req.setAttribute("errorMsg", "Driver with login: '"
                    + req.getParameter("driver_login") + "' already exists");
            req.getRequestDispatcher("/WEB-INF/views/authentication/register.jsp")
                    .forward(req, resp);
        }
        if (req.getParameter("driver_password").equals(req.getParameter("password_repeat"))) {
            driver.setPassword(req.getParameter("driver_password"));
            driverService.create(driver);
            resp.sendRedirect(req.getContextPath() + "/login");
        } else {
            req.setAttribute("errorMsg", "Passwords are not the same");
            req.getRequestDispatcher("/WEB-INF/views/authentication/register.jsp")
                    .forward(req, resp);
        }
    }
}
