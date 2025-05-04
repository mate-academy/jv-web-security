package taxi.controller.driver;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import taxi.exception.RegistrationException;
import taxi.lib.Injector;
import taxi.model.Driver;
import taxi.service.DriverService;
import taxi.service.RegistrationService;

@WebServlet(urlPatterns = "/drivers/add")
public class AddDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);
    private final RegistrationService registrationService = (RegistrationService) injector
            .getInstance(RegistrationService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/driver/add.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {
        String name = req.getParameter("name");
        String licenseNumber = req.getParameter("license_number");
        String login = req.getParameter("login");
        String password = req.getParameter("password");
        String repeatPassword = req.getParameter("repeat_password");
        try {
            registrationService.validation(login, password, repeatPassword);
        } catch (RegistrationException e) {
            req.setAttribute("errorMsg", e.getMessage());
            req.getRequestDispatcher("/WEB-INF/views/driver/add.jsp").forward(req, resp);
            return;
        }
        Driver driver = new Driver(name, licenseNumber);
        driver.setLogin(login);
        driver.setPassword(password);
        Driver createdDriver = driverService.create(driver);
        HttpSession session = req.getSession();
        session.setAttribute("driver_id", createdDriver.getId());
        resp.sendRedirect(req.getContextPath() + "/index");
    }

}
