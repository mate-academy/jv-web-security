package mate.controller;

import mate.exception.AuthenticationException;
import mate.service.AuthenticationService;
import mate.lib.Injector;
import mate.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/login")
public class LoginController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final AuthenticationService authenticationService = (AuthenticationService) injector
            .getInstance(AuthenticationService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("WEB-INF/views/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("login");
        String password = req.getParameter("password");

        try {
            authenticationService.login(username, password);
            resp.sendRedirect("/index");
        } catch (AuthenticationException e) {
           req.setAttribute("errorMsg", e.getMessage());
            req.getRequestDispatcher("WEB-INF/views/login.jsp").forward(req, resp);
        }
    }

}
