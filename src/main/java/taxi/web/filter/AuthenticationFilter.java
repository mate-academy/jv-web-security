package taxi.web.filter;

import java.io.IOException;
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
    private Set<String> allowedUrls;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        allowedUrls = Set.of("/drivers/login", "/drivers/register");
    }

    @Override
    public void doFilter(ServletRequest servletRequest,
                         ServletResponse servletResponse, FilterChain filterChain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse resp = (HttpServletResponse) servletResponse;
        if (allowedUrls.contains(req.getServletPath())) {
            filterChain.doFilter(req, resp);
            return;
        }
        Long id = (Long) req.getSession().getAttribute("id");
        if (id == null) {
            resp.sendRedirect("/drivers/login");
            return;
        }
        filterChain.doFilter(req, resp);
    }
}
