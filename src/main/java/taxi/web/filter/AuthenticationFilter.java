package taxi.web.filter;

import java.io.IOException;
import java.util.HashSet;
import java.util.NoSuchElementException;
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
import taxi.lib.Injector;
import taxi.service.DriverService;

public class AuthenticationFilter implements Filter {
    private static final Injector injector = Injector.getInstance("taxi");
    private Set<String> allowedUrls = new HashSet<>();
    private DriverService driverService;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        allowedUrls.add("/login");
        allowedUrls.add("/drivers/add");
        driverService = (DriverService) injector.getInstance(DriverService.class);
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        HttpSession session = req.getSession();
        Long id = (Long) session.getAttribute("driver_id");

        if (id == null && !allowedUrls.contains(req.getServletPath())) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }
        // Checks whether this driver's id still exists in the db. 
        // Otherwise there is a possibility that a driver, 
        // which has already been deleted, might be able to access the pages.
        if (id != null) {
            try {
                driverService.get(id);
            } catch (NoSuchElementException e) {
                req.getSession().invalidate();
                resp.sendRedirect(req.getContextPath() + "/login");
                return;
            }
        }
        // This was not a part of the task. Prohibits the driver from accessing 
        // login page, when they are already logged in.
        if (id != null && req.getServletPath().equals("/login")) {
            resp.sendRedirect(req.getContextPath() + "/index");
            return;
        }
        chain.doFilter(req, resp);
    }
}
