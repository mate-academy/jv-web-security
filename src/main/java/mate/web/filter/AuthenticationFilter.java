package mate.web.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebFilter(urlPatterns = "/*")
public class AuthenticationFilter implements Filter {
    List<String> urls;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        urls = new ArrayList<>();
        urls.add("/login");
        urls.add("/drivers/add");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse resp = (HttpServletResponse) servletResponse;
        HttpSession session = req.getSession();
        Long driverId = (Long) session.getAttribute("driver_id");
        if (driverId == null && !urls.contains(req.getServletPath())) {
            resp.sendRedirect("/login");
            return;
        }
        filterChain.doFilter(req, resp);
    }
}
