package taxi.controller.user;

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
import taxi.service.RegistrationService;

/**
 * I really implemented this logic accidentally.
 * After I checked all conditions I realised that we don't need to do it))))
 * Anyway it works and I had fun
 */
@WebServlet(urlPatterns = "/register")
public class RegisterController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final RegistrationService registrationService =
            (RegistrationService) injector.getInstance(RegistrationService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/user/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            Driver driver = new Driver(
                    req.getParameter("name"),
                    req.getParameter("license_number"),
                    req.getParameter("login"),
                    req.getParameter("password"));
            registrationService.register(driver, req.getParameter("repeated_password"));
            HttpSession session = req.getSession();
            session.setAttribute("driverId", driver.getId());
            req.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(req, resp);
        } catch (RegistrationException e) {
            req.setAttribute("errorMessage", e.getMessage());
            req.getRequestDispatcher("/WEB-INF/views/user/register.jsp").forward(req, resp);
        }
    }
}
