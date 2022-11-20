package taxi.web.filter;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AuthenticationFilter extends HttpFilter {
    private Set<String> allowedUrls = new HashSet<>();

    @Override
    public void init() throws ServletException {
        allowedUrls.add("/login");
        allowedUrls.add("/drivers/add");
        allowedUrls.add("/");
    }

    @Override
    public void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain)
            throws IOException, ServletException {
        HttpSession session = req.getSession();
        Long driverID = (Long) session.getAttribute("driverID");

        if (driverID == null && !allowedUrls.contains(req.getServletPath())) {
            res.sendRedirect("/");
            return;
        }
        chain.doFilter(req, res);

    }
}
