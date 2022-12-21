package taxi.web.filter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import java.io.IOException;
import java.util.Set;
import java.util.TreeSet;

public class AuthenticationFilter implements Filter {
    private Set<String> allowedUrl;

    @Override
    public void init(FilterConfig filterConfig)
            throws ServletException {
        allowedUrl = new TreeSet<>();
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

    }

    @Override
    public void destroy() {
        allowedUrl.clear();
    }
}
