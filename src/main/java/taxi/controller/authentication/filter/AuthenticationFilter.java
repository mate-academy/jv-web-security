package taxi.controller.authentication.filter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

public class AuthenticationFilter extends HttpFilter {
    private Set<String> allowedUrls;

    @Override
    public void init() {
        allowedUrls = new HashSet<>();
        allowedUrls.add("/login");
        allowedUrls.add("/drivers/add");
    }

    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain)
            throws IOException, ServletException {
        HttpSession session = req.getSession();
        Long driverId = (Long) session.getAttribute("driver_id");
        if (driverId == null) {
            if(allowedUrls.contains(req.getServletPath())) {
                chain.doFilter(req, res);
                return;
            }
            res.sendRedirect("/login");
            return;
        }
        chain.doFilter(req, res);
    }
}
