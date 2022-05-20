package taxi.web.filter;

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
    private final Set<String> allowedUrl = new HashSet<>();

    @Override
    public void init(FilterConfig filterConfig){
        allowedUrl.add("/login");
        allowedUrl.add("/drivers/add");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        HttpServletResponse httpServletResponse = (HttpServletResponse) response;
        HttpSession session = httpServletRequest.getSession();
        Long userId = (Long) session.getAttribute("driver_id");
        if (userId != null || allowedUrl.contains(httpServletRequest.getServletPath())) {
            chain.doFilter(httpServletRequest, httpServletResponse);
        } else {
            httpServletResponse.sendRedirect(httpServletRequest.getContextPath() + "/login");
        }
    }
}
