package mate.filter;

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
    private static final String DRIVERID = "driver_id";
    private Set<String> allowed = new HashSet<>();

    @Override
    public void init(FilterConfig filterConfig) {
        allowed.add("/login");
        allowed.add("/drivers/add");
    }

    @Override
    public void doFilter(ServletRequest servletRequest,
                         ServletResponse servletResponse,
                         FilterChain filterChain)
            throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpSession session = request.getSession();
        Long driverId = (Long) session.getAttribute(DRIVERID);
        if (driverId == null && !allowed.contains(request.getServletPath())) {
            response.sendRedirect("/login");
            return;
        }
        filterChain.doFilter(request, response);
    }
}
