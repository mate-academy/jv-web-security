package taxi.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.exception.AuthenticationException;
import taxi.lib.Injector;
import taxi.model.Driver;
import taxi.service.AuthenticationService;

public class LoginController extends HttpServlet {
    private static final String PATH = "/WEB-INF/views/login/login.jsp";
    private final Injector injector = Injector.getInstance("taxi");
    private AuthenticationService authenticationService
            = (AuthenticationService)injector.getInstance(AuthenticationService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher(PATH).forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String login = req.getParameter("login");
        String password = req.getParameter("password");
        try {
            Driver driver = authenticationService.login(login, password);
            req.getSession().setAttribute("driver_id", driver.getId());
            resp.sendRedirect(req.getContextPath() + "/index");
        } catch (AuthenticationException e) {
            req.setAttribute("message", e.getMessage());
            req.getRequestDispatcher(PATH).forward(req, resp);
        }
    }
}
