package taxi.controller.auth;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.exception.AuthenticationException;
import taxi.lib.Injector;
import taxi.model.Driver;
import taxi.service.RegisterService;

@WebServlet(urlPatterns = "/register")
public class RegistrationController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final RegisterService registerService =
            (RegisterService) injector.getInstance(RegisterService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String name = req.getParameter("name");
        String licenseNumber = req.getParameter("license_number");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        Driver driver = new Driver(name, licenseNumber, username, password);
        try {
            registerService.register(driver);
            req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req, resp);
        } catch (AuthenticationException e) {
            req.setAttribute("errorMsg", e.getMessage());
            req.getRequestDispatcher("/WEB-INF/views/register.jsp").forward(req, resp);
        }

    }
}
