package taxi.web.filter;

import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
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

public class RoleFilter implements Filter {
    private Set<String> allowedUrls = new HashSet<>();
    private Map<String,Set<String>> map = new HashMap<>();

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        allowedUrls.add("/login");
        allowedUrls.add("/register");
        allowedUrls.add("/index");
        allowedUrls.add("/drivers/my");
        allowedUrls.add("/drivers/add");
        allowedUrls.add("/logout");
        map.put("driver", allowedUrls);
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
                         FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse resp = (HttpServletResponse) servletResponse;
        HttpSession session = req.getSession();

        String role = (String) session.getAttribute("role");
        if (role == null) {
            filterChain.doFilter(req, resp);
            return;
        }
        if (!map.get(role).contains(req.getServletPath())) {
            resp.sendRedirect("/index");
            return;
        }
        filterChain.doFilter(req,resp);
    }
}
