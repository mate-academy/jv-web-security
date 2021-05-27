package mate.web.filter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

public class AuthenticationFilter implements Filter {
    private static Set<String> allowedUrls = new HashSet<>();

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        allowedUrls.add("/drivers/add");
        allowedUrls.add("/login");
    }

    @Override
    public void doFilter(ServletRequest servletRequest,
                         ServletResponse servletResponse, FilterChain filterChain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse resp = (HttpServletResponse) servletResponse;
        HttpSession session = req.getSession();

        Long driverId = (Long) session.getAttribute("driver_id");
        if (driverId == null && !allowedUrls.contains(req.getServletPath())) {
            resp.sendRedirect("/login");
            return;
        }
        filterChain.doFilter(req, resp);
    }
}
