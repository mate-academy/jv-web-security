package taxi.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.dao.DriverDao;
import taxi.lib.Injector;

@WebServlet(urlPatterns = "/index")
public class IndexController extends HttpServlet {
    private final Injector injector = Injector.getInstance("taxi");
    private final DriverDao driverDao = (DriverDao) injector.getInstance(DriverDao.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long driverId = (Long) req.getSession().getAttribute("driver_id");
        req.setAttribute("userName", driverDao.findNameById(driverId));
        req.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(req, resp);
    }
}
