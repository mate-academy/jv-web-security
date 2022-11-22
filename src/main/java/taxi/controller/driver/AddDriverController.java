package taxi.controller.driver;

import java.io.IOException;
import java.util.NoSuchElementException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.exception.ValidationException;
import taxi.lib.Injector;
import taxi.model.Driver;
import taxi.service.DriverService;
import taxi.service.EncryptionService;
import taxi.service.ValidationService;

public class AddDriverController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);
    private final ValidationService validationService = (ValidationService) injector
            .getInstance(ValidationService.class);
    private final EncryptionService encryptionService =
            (EncryptionService) injector.getInstance(EncryptionService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/drivers/add.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {
        validateData(req, resp);
        createDriver(req, resp);
    }

    private void validateData(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String login = req.getParameter("login");
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirm_password");
        try {
            validationService.validateLogin(login);
            validationService.validatePassword(password, confirmPassword);
        } catch (ValidationException e) {
            req.setAttribute("errorMsg", e.getMessage());
            req.getRequestDispatcher("/WEB-INF/views/drivers/add.jsp").forward(req, resp);
        }
    }

    private void createDriver(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String name = req.getParameter("name");
        String licenseNumber = req.getParameter("license_number");
        String login = req.getParameter("login");
        String password = req.getParameter("password");
        try {
            driverService.findByLogin(login);
            req.setAttribute("errorMsg", "Driver with the same name or login already exists");
            req.getRequestDispatcher("/WEB-INF/views/drivers/add.jsp").forward(req, resp);
        } catch (NoSuchElementException e) {
            Driver driver =
                    new Driver(name, licenseNumber, login, encryptionService.encrypt(password));
            driverService.create(driver);
            resp.sendRedirect(req.getContextPath() + "/login");
        }
    }
}
