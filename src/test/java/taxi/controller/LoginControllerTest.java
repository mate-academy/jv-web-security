package taxi.controller;

import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import taxi.service.AuthenticationService;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

class LoginControllerTest {
    @Mock
    private HttpServletRequest request;

    @Mock
    private HttpServletResponse response;

    @Mock
    private RequestDispatcher requestDispatcher;

    @Mock
    private HttpSession session;

    @Mock
    private AuthenticationService authenticationService;

    @Test
    public void testDoGet() throws ServletException, IOException {
        // Arrange
        MockitoAnnotations.openMocks(this);
        LoginController loginController = new LoginController();
        Mockito.when(request.getRequestDispatcher("/WEB-INF/views/login.jsp")).thenReturn(requestDispatcher);

        // Act
        loginController.doGet(request, response);

        // Assert
        Mockito.verify(request, Mockito.times(1)).getRequestDispatcher("/WEB-INF/views/login.jsp");
        Mockito.verify(requestDispatcher, Mockito.times(1)).forward(request, response);
    }
}