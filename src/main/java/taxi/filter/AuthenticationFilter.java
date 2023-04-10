package taxi.filter;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AuthenticationFilter extends HttpFilter {
    private final Set<String> allowedUrls = new HashSet<>();

    @Override
    public void init(FilterConfig filterConfig) {
        allowedUrls.add("/login");
        allowedUrls.add("/drivers/add");
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;
        HttpSession session = request.getSession();
        Long userId = (Long) session.getAttribute("user_id");
        if (userId == null && !allowedUrls.contains(request.getServletPath())) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        chain.doFilter(request, response);
    }
}
