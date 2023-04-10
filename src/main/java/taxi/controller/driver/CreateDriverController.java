package taxi.controller.driver;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.exception.AuthenticationException;
import taxi.lib.Injector;
import taxi.model.Driver;
import taxi.service.DriverService;

@WebServlet(urlPatterns = "/drivers/create")
public class CreateDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService
            = (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers/create.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String name = req.getParameter("name");
        String licenseNumber = req.getParameter("license_number");
        String login = req.getParameter("login");
        String password = req.getParameter("password");
        try {
            if (driverService.findByLogin(login).isPresent()) {
                req.setAttribute("name", name);
                req.setAttribute("license_number", licenseNumber);
                req.setAttribute("login", login);
                req.setAttribute("password", password);
                req.setAttribute("error", "Login \"" + login + "\" already exists");
                req.getRequestDispatcher("/WEB-INF/views/drivers/create.jsp")
                        .forward(req, resp);
                return;
            }
        } catch (AuthenticationException e) {
            throw new RuntimeException(e);
        }
        driverService.create(
                new Driver(req.getParameter("name"), req.getParameter("license_number"),
                        req.getParameter("login"), req.getParameter("password")));
        resp.sendRedirect(req.getContextPath() + "/drivers");
    }
}
