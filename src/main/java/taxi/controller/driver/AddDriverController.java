package taxi.controller.driver;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import taxi.lib.Injector;
import taxi.model.Driver;
import taxi.service.AuthenticationService;
import taxi.service.DriverService;

@WebServlet(urlPatterns = "/drivers/add")
public class AddDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);
    private final AuthenticationService authenticationService
            = (AuthenticationService) injector.getInstance(AuthenticationService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers/add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {
        String name = req.getParameter("name");
        String licenseNumber = req.getParameter("license_number");
        String login = req.getParameter("login");
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirmPassword");
        if (authenticationService.isExist(login)) {
            req.setAttribute("errorMsq",
                    "Driver with this login or password already exist.");
            req.getRequestDispatcher("/WEB-INF/views/drivers/add.jsp").forward(req, resp);
        }
        if (!password.equals(confirmPassword)) {
            req.setAttribute("errorMsq",
                    "Your passwords do not match");
            req.getRequestDispatcher("/WEB-INF/views/drivers/add.jsp").forward(req, resp);
        }
        HttpSession session = req.getSession();
        Driver driver = new Driver(name,licenseNumber,login,password);
        session.setAttribute("driver_id", driver.getId());
        driverService.create(driver);
        resp.sendRedirect(req.getContextPath() + "/index");
    }
}
