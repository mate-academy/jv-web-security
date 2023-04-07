package taxi.controller.driver;

import java.io.IOException;
import java.util.Objects;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.service.DriverService;

public class DeleteDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {
        Long id = Long.parseLong(req.getParameter("id"));
        if (Objects.equals(req.getSession().getAttribute("id"), id)) {
            req.setAttribute("errorMsg", "Part of the ship, part of the crew!");
            req.getRequestDispatcher(req.getContextPath() + "/drivers").forward(req, resp);
            return;
        }
        driverService.delete(id);
        resp.sendRedirect(req.getContextPath() + "/drivers");
    }
}
