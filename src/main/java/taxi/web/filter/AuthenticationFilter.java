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
import javax.servlet.http.HttpSession;

public class AuthenticationFilter implements Filter {
    private final Set<String> allowedDraver = new HashSet<>();

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
                         FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse res = (HttpServletResponse) servletResponse;
        HttpSession session = req.getSession();

        Long driverId = (Long) session.getAttribute("driver_id");
        if (driverId == null && allowedDraver.contains(req.getServletPath())) {
            filterChain.doFilter(req, res);
        }
        if (driverId == null) {
            res.sendRedirect("/login");
            return;
        }

        filterChain.doFilter(req, res);

    }

    @Override
    public void init(FilterConfig filterConfig) {
        allowedDraver.add("/login");
        allowedDraver.add("/registration");
    }
}
