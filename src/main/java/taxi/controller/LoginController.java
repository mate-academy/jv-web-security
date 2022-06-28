package taxi.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import taxi.exception.AuthenticationException;
import taxi.lib.Injector;
import taxi.model.Driver;
import taxi.service.AuthenticationService;

public class LoginController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private static final String TEMPLATE_JSP_FILE = "/WEB-INF/views/login.jsp";
    private static final String AFTER_AUTHENTICATION_LOCATION = "/index";
    private final AuthenticationService authenticationService =
            (AuthenticationService) injector.getInstance(AuthenticationService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher(TEMPLATE_JSP_FILE).forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String userName = req.getParameter("login");
        String password = req.getParameter("password");
        try {
            Driver driver = authenticationService.login(userName, password);
            HttpSession session = req.getSession();
            session.setAttribute("user_id", driver.getId());
            resp.sendRedirect(req.getContextPath() + AFTER_AUTHENTICATION_LOCATION);
        } catch (AuthenticationException e) {
            req.setAttribute("errorMessage", e.getMessage());
            req.getRequestDispatcher(TEMPLATE_JSP_FILE).forward(req, resp);
        }
    }
}
