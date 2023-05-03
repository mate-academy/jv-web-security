package taxi.web.filter;

import java.io.IOException;
import java.util.Set;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AuthenticationFilter implements Filter {
    public static final Set<String> SET_OF_URLS;

    static {
        SET_OF_URLS = Set.of("/login", "/drivers/add");
    }

    @Override
    public void doFilter(ServletRequest servletRequest,
                         ServletResponse servletResponse,
                         FilterChain filterChain)
            throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpSession httpSession = request.getSession();
        Long driverId = (Long) httpSession.getAttribute("driver_id");
        if (driverId == null && !SET_OF_URLS.contains(request.getServletPath())) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        filterChain.doFilter(request, response);
    }
}
