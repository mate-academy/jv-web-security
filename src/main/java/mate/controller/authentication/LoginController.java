package mate.controller.authentication;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mate.exception.AuthenticationException;
import mate.lib.Injector;
import mate.model.Driver;
import mate.service.AuthenticationService;

@WebServlet(urlPatterns = "/login")
public class LoginController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private static final String LOGIN = "login";
    private static final String PASSWORD = "password";
    private static final String DRIVER_ID = "driver_id";
    private static final String ERROR_MSG = "errorMsg";
    private final AuthenticationService authenticationService =
            (mate.service.AuthenticationService) injector
                .getInstance(AuthenticationService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/login/login.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String username = req.getParameter(LOGIN);
        String password = req.getParameter(PASSWORD);
        try {
            Driver driver = authenticationService.login(username, password);
            HttpSession session = req.getSession();
            session.setAttribute(DRIVER_ID, driver.getId());
            req.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(req, resp);
        } catch (AuthenticationException e) {
            req.setAttribute(ERROR_MSG, e.getMessage());
            req.getRequestDispatcher("/WEB-INF/views/login/login.jsp").forward(req, resp);
        }
    }
}
