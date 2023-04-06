package taxi.controller.driver;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.model.Driver;
import taxi.service.DriverService;

public class AddDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers/add.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {
        String name = req.getParameter("name");
        String licenseNumber = req.getParameter("license_number");
        String login = req.getParameter("login");
        String password = req.getParameter("password");
        String repeatPassword = req.getParameter("repeat_password");
        if (password.equals(repeatPassword)) {
            Driver driver = new Driver(name, licenseNumber, login, password);
            driverService.create(driver);
            sendMessage("sucMsg", "Driver: " + name + ", created successfully!"
                    + " Driver with login: " + login + " can login.", req, resp);
        } else {
            sendMessage("errMsg", "Passwords don't match, please try again.", req, resp);
        }
    }

    private void sendMessage(String name,
                             Object o,
                             HttpServletRequest req,
                             HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute(name, o);
        req.getRequestDispatcher("/WEB-INF/views/drivers/add.jsp").forward(req, resp);
    }
}
