package taxi.controller.driver;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.exception.AuthenticationException;
import taxi.lib.Injector;
import taxi.model.Driver;
import taxi.service.AuthenticationService;
import taxi.service.DriverService;

public class AddDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final AuthenticationService authenticationService =
            (AuthenticationService) injector.getInstance(AuthenticationService.class);
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers/add.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {
        try {
            Driver driver = authenticationService.register(
                    req.getParameter("login"),
                    req.getParameter("password"),
                    req.getParameter("repeat_password"));
            driver.setName(req.getParameter("name"));
            driver.setLicenseNumber(req.getParameter("license_number"));

            driverService.create(driver);
            req.setAttribute("sucMsg", "Driver: " + driver.getName()
                    + ", created successfully!"
                    + " Driver with login: " + driver.getLogin() + " can login.");
            req.getRequestDispatcher("/WEB-INF/views/drivers/add.jsp").forward(req, resp);
        } catch (AuthenticationException e) {
            req.setAttribute("errMsg", e.getMessage());
            req.getRequestDispatcher("/WEB-INF/views/drivers/add.jsp").forward(req, resp);
        }
    }
}
