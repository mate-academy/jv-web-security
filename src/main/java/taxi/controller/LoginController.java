package taxi.controller;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginController extends HttpServlet {
    private Set<String> allowedUrls;

    @Override
    public void init() throws ServletException {
        super.init();
        allowedUrls = new HashSet<>();
        allowedUrls.add("/login");
        allowedUrls.add("/registration");
    }

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // TODO need code
    }
}
