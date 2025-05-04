package taxi.controller.driver;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import taxi.lib.Injector;
import taxi.service.DriverService;

public class DeleteDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Long id = Long.parseLong(req.getParameter("id"));
        driverService.delete(id);

        HttpSession session = req.getSession();
        Long sessionDriverId = (Long) session.getAttribute("driver_id");
        if (id.equals(sessionDriverId)) {
            session.invalidate();
        }

        resp.sendRedirect(req.getContextPath() + "/drivers");
    }
}
