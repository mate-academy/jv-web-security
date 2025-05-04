package taxi.controller.authentification;

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

@WebServlet ("/registration")
public class RegisterController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final RegistrationService registrationService
            = (RegistrationService) injector.getInstance(RegistrationService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/registration.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {
        String login = req.getParameter("login");
        String password = req.getParameter("password");
        String name = req.getParameter("name");
        String license = req.getParameter("license");
        String repeatPassword = req.getParameter("repeatPassword");
        Driver driver = new Driver(name, license, login, password);
        try {
            Driver registeredDriver = registrationService.register(driver, repeatPassword);
            HttpSession session = req.getSession();
            session.setAttribute("driver_id", registeredDriver.getId());
            resp.sendRedirect(req.getContextPath() + "/drivers/cars");
        } catch (RegistrationException e) {
            req.setAttribute("errorMsg", e.getMessage());
            req.getRequestDispatcher("/WEB-INF/views/registration.jsp").forward(req, resp);
        }
    }
}
