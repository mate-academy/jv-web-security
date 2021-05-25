package mate.controller.web.filter;

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

@WebFilter(urlPatterns = "/*")
public class AuthenticationFilter implements Filter {
    private final Set<String> permittedUrls = new HashSet<>();

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        permittedUrls.add("/login");
        permittedUrls.add("/drivers/add");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
                         FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) servletRequest;
        HttpServletResponse httpResponse = (HttpServletResponse) servletResponse;
        Long userId = (Long) httpRequest.getSession().getAttribute("driver_id");
        if (userId == null && permittedUrls.contains(httpRequest.getServletPath())) {
            filterChain.doFilter(httpRequest, httpResponse);
            return;
        }
        if (userId == null) {
            httpResponse.sendRedirect("/login");
            return;
        }
        filterChain.doFilter(httpRequest, httpResponse);
    }
}
