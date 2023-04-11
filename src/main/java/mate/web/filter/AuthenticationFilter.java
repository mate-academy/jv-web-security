package mate.web.filter;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebFilter("/*")
public class AuthenticationFilter implements Filter {

    private static final Set<String> allowedUrls = new HashSet<>();

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        allowedUrls.add("/login");
        allowedUrls.add("/drivers/add");
    }

    @Override
    public void doFilter(ServletRequest servletRequest,
                         ServletResponse servletResponse,
                         FilterChain filterChain) throws IOException, ServletException {
        final HttpServletRequest request = (HttpServletRequest) servletRequest;
        final HttpServletResponse response = (HttpServletResponse) servletResponse;
        final Long userId = (Long) request.getSession().getAttribute("driverId");
        if (userId == null && allowedUrls.contains(request.getRequestURI())) {
            filterChain.doFilter(request, response);
            return;
        }
        if (userId == null) {
            response.sendRedirect("/login");
            return;
        }
        if (request.getServletPath().equals("/login")) {
            response.sendRedirect("/");
            return;
        }
        filterChain.doFilter(request, response);
    }
}
