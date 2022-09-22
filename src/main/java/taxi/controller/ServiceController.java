package taxi.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/")
public class ServiceController extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        if (req.getSession().getAttribute("driver_id") != null) {
            req.getRequestDispatcher("/WEB-INF/views/sessions/authenticated_service.jsp")
                    .forward(req, resp);
        } else {
            req.getRequestDispatcher("/WEB-INF/views/sessions/non_authenticated_service.jsp")
                    .forward(req, resp);
        }
    }
}
