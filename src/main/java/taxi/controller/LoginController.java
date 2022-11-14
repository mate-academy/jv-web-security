package taxi.controller;

import taxi.lib.Injector;
import taxi.model.Driver;
import taxi.service.AuthenticationService;

import javax.security.auth.login.LoginException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginController extends HttpServlet {
    Injector injector = Injector.getInstance("taxi");
    AuthenticationService authenticationService;

    public LoginController() {
        authenticationService = (AuthenticationService)
                injector.getInstance(AuthenticationService.class);
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String login = req.getParameter("login");
        System.out.println(login);
        String password = req.getParameter("password");
        System.out.println(password);

        try {
            Driver loggedDriver = authenticationService.login(login, password);
            System.out.println(loggedDriver.getId());
        } catch (LoginException e) {
            System.out.println("Email or password is wrong");
            e.printStackTrace();
        }
    }
}
