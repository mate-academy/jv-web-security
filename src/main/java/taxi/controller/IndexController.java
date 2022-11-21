package taxi.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.model.Driver;
import taxi.service.DriverService;

public class IndexController extends HttpServlet {
    private Injector injector;
    private DriverService driverService;

    @Override
    public void init() throws ServletException {
        injector = Injector.getInstance("taxi");
        driverService = (DriverService) injector.getInstance(DriverService.class);
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long driverID = (Long) req.getSession().getAttribute("driver_id");
        Driver driver = driverService.get(driverID);
        req.setAttribute("driver", driver);
        req.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(req, resp);
    }
}
