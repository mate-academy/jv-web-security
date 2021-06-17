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
    private Set<String> allUrls;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        allUrls = new HashSet<>();
        allUrls.add("/login");
        allUrls.add("/index");
        allUrls.add("/drivers/add");
        allUrls.add("/");
    }

    @Override
    public void doFilter(ServletRequest servletRequest,
                         ServletResponse servletResponse, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpSession session = request.getSession();
        Long id = (Long) session.getAttribute("driver_id");
        if (id == null && !allUrls.contains(request.getServletPath())) {
            response.sendRedirect("/login");
            return;
        }
        chain.doFilter(request, response);
    }

}
