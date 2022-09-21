package taxi.controller.session;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.exception.AuthenticationException;
import taxi.lib.Injector;
import taxi.service.RegisterService;

@WebServlet(urlPatterns = "/register")
public class RegisterController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final RegisterService registerService =
            (RegisterService) injector.getInstance(RegisterService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/sessions/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String login = req.getParameter("login");
        String name = req.getParameter("name");
        String licenseNumber = req.getParameter("licenseNumber");
        String password = req.getParameter("password");
        String repeatPassword = req.getParameter("repeatPassword");
        try {
            registerService.register(name, licenseNumber, login, password, repeatPassword);
        } catch (AuthenticationException e) {
            req.setAttribute("error", e.getMessage());
            req.getRequestDispatcher("/WEB-INF/views/sessions/register.jsp").forward(req, resp);
            return;
        }
        resp.sendRedirect(req.getContextPath() + "/login");
    }
}
