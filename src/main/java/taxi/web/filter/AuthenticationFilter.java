package taxi.web.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AuthenticationFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain filterChain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        HttpSession session = req.getSession();
        Long userId = (Long) session.getAttribute("user_id");
        if (userId == null && (req.getServletPath().equals("/login") || req.getServletPath().equals("/register"))) {
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
