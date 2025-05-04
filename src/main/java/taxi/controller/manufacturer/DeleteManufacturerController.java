package taxi.controller.manufacturer;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import taxi.lib.Injector;
import taxi.model.Manufacturer;
import taxi.service.ManufacturerService;

public class DeleteManufacturerController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private static final Logger logger =
            LogManager.getLogger(DeleteManufacturerController.class);
    private final ManufacturerService manufacturerService = (ManufacturerService) injector
            .getInstance(ManufacturerService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Manufacturer manufacturer =
                manufacturerService.get(Long.parseLong(req.getParameter("id")));
        manufacturerService.delete(manufacturer.getId());
        logger.info("Successfully deleted from list manufacturer with id: "
                + manufacturer.getId());
        resp.sendRedirect(req.getContextPath() + "/manufacturers");
    }
}
