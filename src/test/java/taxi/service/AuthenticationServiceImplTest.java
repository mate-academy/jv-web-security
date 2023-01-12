package taxi.service;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import taxi.dao.DriverDao;
import taxi.exception.AuthenticationException;
import taxi.lib.Injector;
import taxi.model.Driver;

class AuthenticationServiceImplTest {
    private static final String LOGIN = "alice";
    private static final String PASSWORD = "1234";
    private static final String NAME = "Alice";
    private static final String LICENSE_NUMBER = "FK2569";
    private static final Injector injector = Injector.getInstance("taxi");
    private static DriverService driverService;
    private static DriverDao driverDao;

    @BeforeAll

    static void beforeAll() {
        driverService = (DriverService) injector.getInstance(DriverService.class);
        driverDao = (DriverDao) injector.getInstance(DriverDao.class);
    }

    @BeforeEach
    void setUp() {
        Driver expectedDriver = driverDao.create(new Driver(NAME, LICENSE_NUMBER, LOGIN, PASSWORD));
    }

    @Test
    void login_ok() throws AuthenticationException {
        Driver actualDriver = driverService.findByLogin(LOGIN);
    }
}