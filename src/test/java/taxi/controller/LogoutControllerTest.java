package taxi.controller;

import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

class LogoutControllerTest {
    @Mock
    private HttpServletRequest request;

    @Mock
    private HttpServletResponse response;

    @Mock
    private HttpSession session;

    @InjectMocks
    private LogoutController logoutController;

    @Test
    public void testDoGet() throws ServletException, IOException {
        MockitoAnnotations.openMocks(this);
        Mockito.when(request.getSession()).thenReturn(session);
        logoutController.doGet(request, response);
        Mockito.verify(session, Mockito.times(1)).invalidate();
        Mockito.verify(response, Mockito.times(1)).sendRedirect(request.getContextPath() + "/login");
    }
}