package taxi.controller.manufacturer;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import taxi.controller.car.AddCarController;
import taxi.lib.Injector;
import taxi.service.CarService;
import taxi.service.ManufacturerService;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

class AddManufacturerControllerTest {
    private static final Injector injector = Injector.getInstance("taxi");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final ManufacturerService manufacturerService = (ManufacturerService) injector
            .getInstance(ManufacturerService.class);
    @Mock
    private HttpServletRequest request;
    @Mock
    private HttpServletResponse response;
    @Mock
    private RequestDispatcher requestDispatcher;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void testDoGet() throws Exception {
        when(request.getRequestDispatcher("/WEB-INF/views/cars/add.jsp")).thenReturn(requestDispatcher);

        new AddCarController().doGet(request, response);

        verify(request).getRequestDispatcher("/WEB-INF/views/cars/add.jsp");
        verify(requestDispatcher).forward(request, response);
    }
}