package taxi.controller.driver;

import java.io.IOException;
import javax.security.sasl.AuthenticationException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.model.Driver;
import taxi.service.DriverService;

@WebServlet(urlPatterns = "/drivers/add")
public class AddDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers/add.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        try {
            String name = req.getParameter("name");
            String licenseNumber = req.getParameter("license_number");
            final String login = req.getParameter("login");
            String password = req.getParameter("password");
            String repeatPassword = req.getParameter("repeat_password");
            if (!password.equals(repeatPassword)) {
                throw new AuthenticationException("Passwords not equals, please try again");
            }
            Driver driver = new Driver();
            driver.setName(name);
            driver.setLicenseNumber(licenseNumber);
            driver.setLogin(login);
            driver.setPassword(password);
            driverService.create(driver);
            resp.sendRedirect(req.getContextPath() + "/index");
        } catch (AuthenticationException e) {
            req.setAttribute("errorMsg", e.getMessage());
            try {
                req.getRequestDispatcher("/WEB-INF/views/drivers/add.jsp").forward(req, resp);
            } catch (ServletException ex) {
                throw new RuntimeException("Can't refresh page", ex);
            }
        }
    }
}
