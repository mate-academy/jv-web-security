package taxi.controller.authentication;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import taxi.exception.AuthenticatingException;
import taxi.lib.Injector;
import taxi.model.Driver;
import taxi.service.AuthenticationService;
import taxi.service.DriverService;

public class LoginController extends HttpServlet {
    private final AuthenticationService authenticationService;
    private final DriverService driverService;

    {
        Injector injector = Injector.getInstance("mate");
        authenticationService =
                (AuthenticationService) injector.getInstance(AuthenticationService.class);
        driverService =
                (DriverService) injector.getInstance(DriverService.class);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        HttpSession session = req.getSession();
        String login = req.getParameter("Login");
        String password = req.getParameter("Password");
        try {
            authenticationService.login(login, password);
            Driver driver = driverService.findByLogin(login).get();
            session.setAttribute("driver_id", driver.getId());
            resp.sendRedirect("/index");
        } catch (AuthenticatingException e) {
            req.setAttribute("errorMsg", e.getMessage());
            req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req, resp);
        }
    }
}
