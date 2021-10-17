package mate.web.filter;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AuthenticationFilter extends HttpFilter {
    private Set allowedUrl = new HashSet();

    @Override
    public void init(FilterConfig config) {
        allowedUrl.add("/drivers/add");
        allowedUrl.add("/login");
    }

    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain)
            throws IOException, ServletException {
        HttpSession session = req.getSession();
        Long userId = (Long) session.getAttribute("driver_id");
        if (userId == null && allowedUrl.contains(req.getServletPath())) {
            chain.doFilter(req, res);
            return;
        }
        if (userId == null) {
            res.sendRedirect("/login");
            return;
        }
        chain.doFilter(req, res);
    }
}
