package taxi.controller.authentication;

import taxi.lib.Injector;
import taxi.model.Driver;
import taxi.service.DriverService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class RegisterController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/authentication/register.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirmPassword");
        if (!password.equals(confirmPassword)) {
            req.setAttribute("errorMsg", "Passwords do not match.");
            HttpSession session = req.getSession();
            Long driverId = (Long) session.getAttribute("driver_id");
            if (driverId == null) {
                req.getRequestDispatcher("/WEB-INF/views/authentication/register.jsp").forward(req, resp);
            } else {
                req.getRequestDispatcher("/WEB-INF/views/drivers/add.jsp").forward(req, resp);
            }
            return;
        }
        String name = req.getParameter("name");
        String login = req.getParameter("login");
        String licenseNumber = req.getParameter("licenseNumber");
        Driver driver = new Driver();
        driver.setName(name);
        driver.setLogin(login);
        driver.setPassword(password);
        driver.setLicenseNumber(licenseNumber);
        driverService.create(driver);
        resp.sendRedirect(req.getContextPath() + "/login");
    }
}
