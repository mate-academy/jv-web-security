package taxi.controller.authentication;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.exception.RegistrationException;
import taxi.lib.Injector;
import taxi.model.Driver;
import taxi.service.registration.RegistrationService;

public class RegistrationController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private static RegistrationService registrationService =
            (RegistrationService) injector.getInstance(RegistrationService.class);

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
        try {
            registrationService.register(driver);
            response.sendRedirect(request.getContextPath() + "/login");
        } catch (RegistrationException e) {
            request.setAttribute("errorMessage", e.getMessage());
            request.getRequestDispatcher("/WEB-INF/views/drivers/registration.jsp")
                    .forward(request, response);
        }
    }
}
