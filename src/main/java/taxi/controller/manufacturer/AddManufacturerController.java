package taxi.controller.manufacturer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.model.Manufacturer;
import taxi.service.ManufacturerService;

public class AddManufacturerController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final ManufacturerService manufacturerService = (ManufacturerService) injector
            .getInstance(ManufacturerService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/manufacturers/add.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {
        String name = req.getParameter("name");
        String country = req.getParameter("country");
        if (name == null || name.length() == 0) {
            req.setAttribute("errorMsg", "Invalid name!");
            resp.sendRedirect(req.getContextPath()
                    + "/manufacturers/add?errorMsg=Manufacturer+name+was+invalid");
        } else if (country == null || country.length() == 0) {
            req.setAttribute("errorMsg", "Invalid name!");
            resp.sendRedirect(req.getContextPath()
                    + "/manufacturers/add?errorMsg=Manufacturer+country+was+invalid");
        }
        Manufacturer manufacturer = new Manufacturer(name, country);
        manufacturerService.create(manufacturer);
        resp.sendRedirect(req.getContextPath()
                + "/manufacturers?successMessage=Manufacturer+successfully+added");
    }
}
