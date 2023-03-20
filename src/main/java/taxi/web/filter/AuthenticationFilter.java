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
    private final Set<String> excludes = new HashSet<>();

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
        excludes.add("/drivers/add");
        excludes.add("/login");
    }

    @Override
    public void doFilter(ServletRequest servletRequest,
                         ServletResponse servletResponse, FilterChain filterChain)
            throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) servletRequest;
        HttpServletResponse httpResponse = (HttpServletResponse) servletResponse;
        HttpSession session = httpRequest.getSession();
        Long driverId = (Long) session.getAttribute("driver_id");
        if (driverId != null || excludes.contains(httpRequest.getServletPath())) {
            filterChain.doFilter(httpRequest, httpResponse);
            return;
        }
        httpResponse.sendRedirect(httpRequest.getContextPath() + "/login");
    }
}
