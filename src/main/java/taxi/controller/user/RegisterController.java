package taxi.controller.user;

import java.io.IOException;
import javax.naming.AuthenticationException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.service.RegisterService;

public class RegisterController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final RegisterService registerService =
            (RegisterService) injector.getInstance(RegisterService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/user/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String login = req.getParameter("login");
        String password = req.getParameter("password");
        String repeatPassword = req.getParameter("repeatPassword");
        String name = req.getParameter("name");
        String licenseNumber = req.getParameter("licenseNumber");
        try {
            registerService.register(login, password,
                    repeatPassword, name, licenseNumber);
        } catch (AuthenticationException e) {
            req.setAttribute("message", e.getMessage());
            req.getRequestDispatcher("/WEB-INF/views/user/register.jsp").forward(req, resp);
            return;
        }
        resp.sendRedirect(req.getContextPath() + "/login");
    }
}
