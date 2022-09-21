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
                         FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        HttpSession session = req.getSession();
        Long driverId = (Long) session.getAttribute("driverId");
        if (driverId == null && (req.getServletPath().equals("/drivers/add")
                || req.getServletPath().equals("/login"))) {
            chain.doFilter(req, resp);
            return;
        }
        if (driverId == null) {
            resp.sendRedirect("/drivers/add");
            return;
        }
        chain.doFilter(req, resp);
    }
}
