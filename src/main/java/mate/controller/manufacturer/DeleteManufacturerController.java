package mate.controller.manufacturer;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import mate.lib.Injector;
import mate.service.ManufacturerService;

public class DeleteManufacturerController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("mate");
    private final ManufacturerService manufacturerService = (ManufacturerService) injector
            .getInstance(ManufacturerService.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
        manufacturerService.delete(Long.parseLong(req.getParameter("id")));
        resp.sendRedirect("/manufacturers/all");
    }
}
