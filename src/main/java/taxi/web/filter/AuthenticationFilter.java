package taxi.web.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

public class AuthenticationFilter implements Filter {
    private Set<String> allowedLinks = new HashSet<>();

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        allowedLinks.add("/login");
        allowedLinks.add("/drivers/add");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        HttpSession session = req.getSession();
        Long driverId = (Long) session.getAttribute("driver_id");
        if (driverId == null && allowedLinks.contains(req.getServletPath())) {
            chain.doFilter(request, response);
            return;
        }
        if (driverId == null) {
            resp.sendRedirect("/login");
            return;
        }
        chain.doFilter(request, response);
    }
}
