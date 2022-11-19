package taxi.controller.authentication;

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
    private static final String adminPass = "admin";
    private static final String adminLogin = "admin";
    private static final Injector injector = Injector.getInstance("taxi");
    private final AuthenticationService authenticationService
            = (AuthenticationService) injector.getInstance(AuthenticationService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/authentication/login.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String username = req.getParameter("login");
        String password = req.getParameter("password");
        try {
            Driver driver = authenticationService.login(username, password);
            if (isAdmin(driver)) {
                HttpSession session = req.getSession();
                session.setAttribute("driver_id", driver.getId());
                resp.sendRedirect(req.getContextPath() + "/");
                return;
            }
            HttpSession session = req.getSession();
            session.setAttribute("driver_id", driver.getId());
            resp.sendRedirect(req.getContextPath() + "/drivers/cars");
        } catch (AuthenticationException e) {
            req.setAttribute("errorMsg", e.getMessage());
            req.getRequestDispatcher("/WEB-INF/views/authentication/login.jsp").forward(req,resp);
        }
    }

    private boolean isAdmin(Driver driver) {
        return driver.getPassword().equals(adminPass)
                && driver.getLogin().equals(adminLogin);
    }
}
