package taxi.controller.authentication;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.exception.RegistrationException;
import taxi.lib.Injector;
import taxi.model.Driver;
import taxi.service.dao.DriverService;
import taxi.service.registration.RegistrationService;
import taxi.service.registration.RegistrationServiceImpl;

public class RegistrationController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final DriverService driverService =
            (DriverService) injector.getInstance(DriverService.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/drivers/registration.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String licenseNumber = request.getParameter("licenseNumber");
        String login = request.getParameter("login");
        String password = request.getParameter("password");
        Driver driver = new Driver(name, licenseNumber, login, password);
        RegistrationService registrationService = new RegistrationServiceImpl();
        try {
            registrationService.registration(driver);
            driverService.create(driver);
            response.sendRedirect("/login");
        } catch (RegistrationException e) {
            request.setAttribute("errorMassage", e.getMessage());
            request.getRequestDispatcher("/WEB-INF/views/drivers/registration.jsp")
                    .forward(request, response);
        }
    }
}
