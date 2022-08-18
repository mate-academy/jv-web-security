package taxi.web.filter;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AuthenticationFilter implements Filter {
    private final Set<String> allowedUrls;

    @Override
    public void init(FilterConfig filterConfig) {
        allowedUrls = Set.of("/login", "/drivers/add");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        Long driverId = (Long) req.getSession().getAttribute("driver_id");
        if (driverId != null && req.getServletPath().equals("/login")) {
            resp.sendRedirect(req.getContextPath() + "/");
            return;
        }
        if (driverId != null || allowedUrls.contains(req.getServletPath())) {
            chain.doFilter(req, resp);
            return;
        }
        resp.sendRedirect(req.getContextPath() + "/login");
    }
}
