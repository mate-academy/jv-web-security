package taxi.service;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import java.util.Optional;
import taxi.exception.AuthenticationExeption;
import taxi.model.Driver;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.when;

class AuthenticationServiceImplTest {
    @Mock
    private DriverService driverService;

    @InjectMocks
    private AuthenticationServiceImpl authService;

    @BeforeEach
    public void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    public void testLoginSuccess() throws AuthenticationExeption {
        Driver driver = new Driver("John", "Doe", "johndoe", "password");
        when(driverService.findByLogin("johndoe")).thenReturn(Optional.of(driver));

        Driver result = authService.login("johndoe", "password");

        Assertions.assertEquals(driver, result);
        Mockito.verify(driverService, times(1)).findByLogin("johndoe");
    }

    @Test
    public void testLoginIncorrectLogin() {
        when(driverService.findByLogin("johndoe")).thenReturn(Optional.empty());

        Assertions.assertThrows(AuthenticationExeption.class, () -> authService.login("johndoe", "password"));
        Mockito.verify(driverService, times(1)).findByLogin("johndoe");
    }

    @Test
    public void testLoginIncorrectPassword() {
        Driver driver = new Driver("John", "Doe", "johndoe", "password");
        when(driverService.findByLogin("johndoe")).thenReturn(Optional.of(driver));

        Assertions.assertThrows(AuthenticationExeption.class, () -> authService.login("johndoe", "wrongpassword"));
        Mockito.verify(driverService, times(1)).findByLogin("johndoe");
    }
}