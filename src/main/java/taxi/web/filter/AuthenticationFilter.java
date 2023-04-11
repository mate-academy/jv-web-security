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
    public void init(FilterConfig filterConfig) throws ServletException {
        allowedUrls.add("/login");
        allowedUrls.add("/register");
        allowedUrls.add("/drivers/add");
        allowedUrls.add("/web-resources/css/login_register.css");
        allowedUrls.add("/web-resources/taxi.svg");
        allowedUrls.add("/web-resources/steering-wheel.svg");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest)request;
        HttpServletResponse resp = (HttpServletResponse)response;
        HttpSession session = req.getSession();
        Long id = (Long) session.getAttribute("driver_id");
        if (id == null && !allowedUrls.contains(req.getServletPath())) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }
        chain.doFilter(req, resp);
    }
}
