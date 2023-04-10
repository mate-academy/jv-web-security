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
    private final AuthenticationService authenticationService = (AuthenticationService) injector
            .getInstance(AuthenticationService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/authentication/login.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String login = req.getParameter("login");
        String password = req.getParameter("password");
        if (login != null && password != null) {
            try {
                Driver driver = authenticationService.login(login, password);
                if (driver != null) {
                    HttpSession session = req.getSession();
                    session.setAttribute("id", driver.getId());
                    resp.sendRedirect(req.getContextPath() + "/index");
                }
            } catch (AuthenticationException e) {
                req.setAttribute("errorMsg", "Invalid credentials!");
                req.getRequestDispatcher("/WEB-INF/views/authentication/login.jsp")
                        .forward(req, resp);
            }
        } else {
            req.setAttribute("errorMsg", "Fill all fields!");
        }
    }
}
