package taxi.controller.user;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.model.Driver;
import taxi.service.DriverService;

public class UpdateInformationController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Driver driver = driverService.get((Long) req.getSession().getAttribute("id"));
        driver.setName(req.getParameter("name"));
        driver.setLicenseNumber(req.getParameter("license_number"));
        driverService.update(driver);
        resp.sendRedirect(req.getContextPath() + "/cabinet");
    }
}
