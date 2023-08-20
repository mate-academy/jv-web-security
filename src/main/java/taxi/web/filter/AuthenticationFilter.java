package taxi.web.filter;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AuthenticationFilter implements Filter {
    Set<String> allowedUrl = new HashSet<>();

    @Override
    public void init(FilterConfig filterConfig)
            throws ServletException {
        allowedUrl.add("/login");
        allowedUrl.add("/drivers/add");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        HttpSession httpSession = req.getSession();
        Long id = (Long) httpSession.getAttribute("id");
        if (id == null && allowedUrl.contains(req.getServletPath())) {
            chain.doFilter(req, resp);
            return;
        }
        if (id == null) {
            resp.sendRedirect("/login");
            return;
        }
        chain.doFilter(req, resp);
    }
}
