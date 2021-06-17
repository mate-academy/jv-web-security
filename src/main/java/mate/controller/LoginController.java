package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mate.lib.Injector;
import mate.lib.exception.AuthenticationException;
import mate.model.Driver;
import mate.service.DriverAuthenticationService;

public class LoginController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final String DRIVER_ID = "driver_id";
    private final DriverAuthenticationService driverAuthenticationService =
            (DriverAuthenticationService) injector.getInstance(DriverAuthenticationService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String login = req.getParameter("login");
        String password = req.getParameter("password");
        try {
            Driver driver = driverAuthenticationService.login(login, password);
            HttpSession session = req.getSession();
            session.setAttribute(DRIVER_ID, driver.getId());
            resp.sendRedirect("/index");
        } catch (AuthenticationException e) {
            req.setAttribute("errorMsg", e.getMessage());
            req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req, resp);
        }
    }
}
