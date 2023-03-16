package taxi.service;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import taxi.dao.DriverDao;
import taxi.model.Driver;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;

class DriverServiceImplTest {
    private DriverService driverService;
    @Mock
    private DriverDao driverDao;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
        driverService = new DriverServiceImpl(driverDao);
    }

    @Test
    void testCreate() {
        Driver driver = new Driver();
        driver.setId(1L);
        Mockito.when(driverDao.create(driver)).thenReturn(driver);
        Driver createdDriver = driverService.create(driver);
        assertNotNull(createdDriver);
        assertEquals(driver.getId(), createdDriver.getId());
        Mockito.verify(driverDao).create(driver);
    }

    @Test
    void testGet() {
        Driver driver = new Driver();
        driver.setId(1L);
        Mockito.when(driverDao.get(1L)).thenReturn(Optional.of(driver));
        Driver foundDriver = driverService.get(1L);
        assertNotNull(foundDriver);
        assertEquals(driver.getId(), foundDriver.getId());
        Mockito.verify(driverDao).get(1L);
    }

    @Test
    void testGetNonexistentDriver() {
        Mockito.when(driverDao.get(1L)).thenReturn(Optional.empty());
        assertThrows(NoSuchElementException.class, () -> driverService.get(1L));
        Mockito.verify(driverDao).get(1L);
    }

    @Test
    void testGetAll() {
        List<Driver> drivers = new ArrayList<>();
        Driver driver1 = new Driver();
        driver1.setId(1L);
        Driver driver2 = new Driver();
        driver2.setId(2L);
        drivers.add(driver1);
        drivers.add(driver2);
        Mockito.when(driverDao.getAll()).thenReturn(drivers);
        List<Driver> foundDrivers = driverService.getAll();
        assertNotNull(foundDrivers);
        assertEquals(2, foundDrivers.size());
        assertEquals(drivers.get(0).getId(), foundDrivers.get(0).getId());
        assertEquals(drivers.get(1).getId(), foundDrivers.get(1).getId());
        Mockito.verify(driverDao).getAll();
    }

    @Test
    void testUpdate() {
        Driver driver = new Driver();
        driver.setId(1L);
        Mockito.when(driverDao.update(driver)).thenReturn(driver);
        Driver updatedDriver = driverService.update(driver);
        assertNotNull(updatedDriver);
        assertEquals(driver.getId(), updatedDriver.getId());
        Mockito.verify(driverDao).update(driver);
    }

    @Test
    void testDelete() {
        Mockito.when(driverDao.delete(1L)).thenReturn(true);
        assertTrue(driverService.delete(1L));
        Mockito.verify(driverDao).delete(1L);
    }

    @Test
    void testFindByLogin() {
        Driver driver = new Driver();
        driver.setId(1L);
        driver.setLogin("driver1");
        Mockito.when(driverDao.findByLogin("driver1")).thenReturn(Optional.of(driver));
        Optional<Driver> foundDriver = driverService.findByLogin("driver1");
        assertNotNull(foundDriver);
        assertTrue(foundDriver.isPresent());
        assertEquals(driver.getId(), foundDriver.get().getId());
        Mockito.verify(driverDao).findByLogin("driver1");
    }

    @Test
    void testFindByNonexistentLogin() {
        Mockito.when(driverDao.findByLogin("driver1")).thenReturn(Optional.empty());
        Optional<Driver> foundDriver = driverService.findByLogin("driver1");
        assertNotNull(foundDriver);
        assertFalse(foundDriver.isPresent());
        Mockito.verify(driverDao).findByLogin("driver1");
    }
}