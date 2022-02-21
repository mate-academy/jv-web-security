package taxi.web.filter;

import java.io.IOException;
import java.util.Collections;
import java.util.Set;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AuthenticationFilter extends HttpFilter {
    private static final Set<String> allowedUrls =
            Collections.unmodifiableSet(Set.of("/login", "/drivers/add"));

    @Override
    public void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain)
            throws IOException, ServletException {
        HttpSession session = req.getSession();
        Long userId = (Long) session.getAttribute("user_id");
        if (userId != null || allowedUrls.contains(req.getServletPath())) {
            chain.doFilter(req, res);
            return;
        }
        res.sendRedirect("/login");
    }
}
