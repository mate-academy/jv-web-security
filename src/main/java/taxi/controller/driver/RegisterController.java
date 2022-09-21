package taxi.controller.driver;

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
public class RegisterController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService = (DriverService)
            injector.getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/authentication/register.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {
        String login = req.getParameter("login");
        Optional<Driver> driverByLogin = driverService.findByLogin(login);
        if (driverByLogin.isPresent()) {
            req.setAttribute("errorMessage", "Username already exist. Try another one.");
            req.getRequestDispatcher("/WEB-INF/views/authentication/register.jsp")
                    .forward(req, resp);
            return;
        }
        String name = req.getParameter("name");
        String licenseNumber = req.getParameter("license_number");
        String password = req.getParameter("password");
        Driver driver = new Driver(name, licenseNumber, login, password);
        driverService.create(driver);
        resp.sendRedirect(req.getContextPath() + "/login");
    }
}
