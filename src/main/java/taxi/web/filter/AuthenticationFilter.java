package taxi.web.filter;

import java.io.IOException;
import java.util.Set;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AuthenticationFilter extends HttpFilter {
    private Set<String> allowedUrls;

    @Override
    public void init() throws ServletException {
        allowedUrls = Set.of("/login", "/drivers/add");
    }

    @Override
    public void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain)
            throws IOException, ServletException {
        HttpSession session = req.getSession();
        Long id = (Long) session.getAttribute("driver_id");
        if (allowedUrls.contains(req.getServletPath())) {
            chain.doFilter(req, res);
            return;
        }
        if (id == null) {
            res.sendRedirect("/login");
            return;
        }
        chain.doFilter(req, res);
    }
}
