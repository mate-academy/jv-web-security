package taxi.web.filter;

import java.io.IOException;
import java.util.Set;
import java.util.TreeSet;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AuthenticationFilter implements Filter {
    private Set<String> allowedUrl;

    @Override
    public void init(FilterConfig filterConfig)
            throws ServletException {
        allowedUrl = new TreeSet<>();
        allowedUrl.add("/login");
        allowedUrl.add("/register");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        Integer hashUser = (Integer) req.getSession().getAttribute("hashUser");
        if (hashUser != null || allowedUrl.contains(req.getServletPath())) {
            chain.doFilter(request, response);
        } else {
            resp.sendRedirect("/login");
        }
    }

    @Override
    public void destroy() {
        allowedUrl.clear();
    }
}
