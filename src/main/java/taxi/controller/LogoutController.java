package taxi.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.service.service.AuthenticationSevice;

@WebServlet(urlPatterns = "/logout")
public class LogoutController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final AuthenticationSevice authenticationService
            = (AuthenticationSevice) injector.getInstance(AuthenticationSevice.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getSession().invalidate();
        resp.sendRedirect(req.getContextPath() + "/index");
    }
}
