package taxi.filter;

import java.io.IOException;
import java.util.HashSet;
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
    private final HashSet<String> accesableSites = new HashSet<>();

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        accesableSites.add("/login");
        accesableSites.add("/register");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
                         FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse resp = (HttpServletResponse) servletResponse;
        HttpSession session = req.getSession();
        Long id = (Long) session.getAttribute("driver_id");

        if (id == null && accesableSites.contains(req.getServletPath())) {
            filterChain.doFilter(req, resp);
            return;
        }

        if (id == null) {
            resp.sendRedirect("/login");
            return;
        }

        filterChain.doFilter(req, resp);
    }
}
