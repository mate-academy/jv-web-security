package taxi.controller.driver;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import taxi.lib.Injector;
import taxi.model.Driver;
import taxi.service.DriverService;

public class DeleteDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private static final Logger logger =
            LogManager.getLogger(DeleteDriverController.class);
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Driver driver = driverService.get(Long.parseLong(req.getParameter("id")));
        driverService.delete(driver.getId());
        logger.info("Successfully deleted from list driver with id: "
                + driver.getId());
        resp.sendRedirect(req.getContextPath() + "/drivers");
    }
}
