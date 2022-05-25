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
import taxi.service.authentication.AuthenticationService;

public class LoginController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final AuthenticationService authenticationService =
            (AuthenticationService) injector.getInstance(AuthenticationService.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/drivers/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String login = request.getParameter("login");
        String password = request.getParameter("password");
        try {
            Driver driver = authenticationService.login(login, password);
            HttpSession session = request.getSession();
            session.setAttribute("driverId", driver.getId());
            session.setAttribute("logout", "Logout");
            response.sendRedirect("/index");
        } catch (AuthenticationException e) {
            request.setAttribute("errorMassage", e.getMessage());
            request.getRequestDispatcher("/WEB-INF/views/drivers/login.jsp")
                    .forward(request, response);
        }
    }
}
