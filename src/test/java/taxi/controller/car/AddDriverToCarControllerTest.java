package taxi.controller.car;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static org.mockito.Mockito.*;

class AddDriverToCarControllerTest {
    @Mock
    private HttpServletRequest request;

    @Mock
    private HttpServletResponse response;

    @Mock
    private RequestDispatcher dispatcher;

    @InjectMocks
    private AddDriverToCarController addDriverToCarController;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }
    @Test
    public void testDoGet() throws Exception {
        when(request.getRequestDispatcher("/WEB-INF/views/cars/drivers/add.jsp")).thenReturn(dispatcher);

        addDriverToCarController.doGet(request, response);

        verify(request).getRequestDispatcher("/WEB-INF/views/cars/drivers/add.jsp");
        verify(dispatcher).forward(request, response);
    }
}