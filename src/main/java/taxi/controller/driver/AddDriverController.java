package taxi.controller.driver;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import taxi.lib.Injector;
import taxi.model.Driver;
import taxi.service.DriverService;

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
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {
        String login = req.getParameter("login");
        if (driverService.findByLogin(login).isPresent()) {
            req.setAttribute("errorMsg", "This login is already taken. Try another.");
            req.getRequestDispatcher("/WEB-INF/views/drivers/add.jsp").forward(req, resp);
            return;
        }
        String password = req.getParameter("password");
        String name = req.getParameter("name");
        String licenseNumber = req.getParameter("license_number");
        Driver driver = new Driver(login, password, name, licenseNumber);
        driverService.create(driver);
        resp.sendRedirect(req.getContextPath() + "/drivers/add");
    }
}
