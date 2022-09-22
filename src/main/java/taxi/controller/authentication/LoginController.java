package taxi.controller.authentication;

import java.io.IOException;
import javax.naming.AuthenticationException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import taxi.lib.Injector;
import taxi.model.Driver;
import taxi.service.AuthenticationService;
import taxi.service.DriverService;

public class LoginController extends HttpServlet {
    private Injector injector;
    private DriverService driverService;
    private AuthenticationService authenticationService;

    @Override
    public void init(ServletConfig config) {
        injector = Injector.getInstance("taxi");
        driverService = (DriverService) injector.getInstance(DriverService.class);
        authenticationService = (AuthenticationService)
                injector.getInstance(AuthenticationService.class);
    }

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
        try {
            Driver driver = authenticationService.login(login, password);
            HttpSession sessia = req.getSession();
            sessia.setAttribute("driver_id", driver.getId());
            resp.sendRedirect(req.getContextPath() + "/index");
        } catch (AuthenticationException e) {
            req.setAttribute("wrongCredits", e.getMessage());
            req.getRequestDispatcher("/WEB-INF/views/authentication/login.jsp")
                    .forward(req,resp);
        }
    }
}
