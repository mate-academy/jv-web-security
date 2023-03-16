package taxi.controller;

import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

class IndexControllerTest {
    @Mock
    private HttpServletRequest request;

    @Mock
    private HttpServletResponse response;

    @Mock
    private RequestDispatcher requestDispatcher;

    @Test
    public void testDoGet() throws ServletException, IOException {
        MockitoAnnotations.openMocks(this);
        IndexController indexController = new IndexController();
        when(request.getRequestDispatcher("/WEB-INF/views/index.jsp")).thenReturn(requestDispatcher);
        indexController.doGet(request, response);
        verify(request, times(1)).getRequestDispatcher("/WEB-INF/views/index.jsp");
        verify(requestDispatcher, times(1)).forward(request, response);
    }
}