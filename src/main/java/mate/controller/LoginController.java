package mate.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mate.exception.AuthenticationException;
import mate.model.Driver;
import mate.service.AuthenticationService;
import mate.service.impl.AuthenticationServiceImpl;

@WebServlet(urlPatterns = "/login")
public class LoginController extends HttpServlet {
    private static final String PAGE_PATH = "/WEB-INF/views/login.jsp";
    private static final String USER_ID = "user_id";
    private AuthenticationService authenticationService;

    @Override
    public void init() {
        authenticationService = new AuthenticationServiceImpl();
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher(PAGE_PATH).forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String username = req.getParameter("login");
        String password = req.getParameter("password");
        try {
            Driver user = authenticationService.login(username, password);
            HttpSession session = req.getSession();
            session.setAttribute(USER_ID, user.getId());
            resp.sendRedirect("/index");
        } catch (AuthenticationException e) {
            req.setAttribute("errorMsg",e.getMessage());
            req.getRequestDispatcher(PAGE_PATH).forward(req, resp);
        }
    }
}
