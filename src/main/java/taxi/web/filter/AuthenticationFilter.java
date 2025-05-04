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
    private final Set<String> allowedUrls = new HashSet<>();

    @Override
    public void init(FilterConfig filterConfig) {
        allowedUrls.add("/login");
        allowedUrls.add("/drivers/add");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
                         FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpSession session = request.getSession();
        Long driverId = (Long) session.getAttribute("driver_id");
        if (driverId != null || allowedUrls.contains(request.getServletPath())) {
            filterChain.doFilter(request, response);
            return;
        }
        response.sendRedirect(request.getContextPath() + "/login");
    }
}
