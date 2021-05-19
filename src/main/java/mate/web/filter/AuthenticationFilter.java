package mate.web.filter;

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
    public void doFilter(ServletRequest servletRequest,
                         ServletResponse servletResponse, FilterChain filterChain)
                throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpSession session = request.getSession();

        Long id = (Long) session.getAttribute("id");
        if (id == null && (request.getServletPath().equals("/drivers/login")
                || request.getServletPath().equals("/drivers/add"))) {
            filterChain.doFilter(request, response);
            return;
        }
        if (id == null) {
            response.sendRedirect("/drivers/login");
            return;
        }
        filterChain.doFilter(request, response);
    }
}

