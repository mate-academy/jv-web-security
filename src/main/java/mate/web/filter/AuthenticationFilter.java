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
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AuthenticationFilter implements Filter {
    private final Set<String> urls = new HashSet<>();

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
        urls.add("/login");
        urls.add("/drivers/add");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
                         FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse resp = (HttpServletResponse) servletResponse;
        HttpSession session = req.getSession();
        Long userId = (Long) session.getAttribute("user_id");
        if (userId == null && urls.contains(req.getServletPath())) {
            filterChain.doFilter(req, resp);
            return;
        }
        if (userId == null) {
            resp.sendRedirect("/login");
            return;
        }
        filterChain.doFilter(req, resp);
    }
}
