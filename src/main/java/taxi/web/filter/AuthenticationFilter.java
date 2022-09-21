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
    private Set<String> allowedUrls = new HashSet<>();

    @Override
    public void init(FilterConfig filterConfig) {
        allowedUrls.add("/drivers/add");
        allowedUrls.add("/login");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        HttpSession session = req.getSession();
        Long driverId = (Long) session.getAttribute("driverId");
        if (driverId == null && allowedUrls.contains(req.getServletPath())) {
            chain.doFilter(req, resp);
            return;
        }
        if (driverId == null) {
            resp.sendRedirect("/drivers/add");
            return;
        }
        chain.doFilter(req, resp);
    }
}
