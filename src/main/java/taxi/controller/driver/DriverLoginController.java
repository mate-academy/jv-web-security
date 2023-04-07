package taxi.controller.driver;

import taxi.lib.Injector;
import taxi.model.Driver;
import taxi.service.AuthenticationService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DriverLoginController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final AuthenticationService authenticationService = (AuthenticationService)
            injector.getInstance(AuthenticationService.class);
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String username = req.getParameter("login");
        String password = req.getParameter("password");

        Driver driver = authenticationService.login(username, password);
    }
}
