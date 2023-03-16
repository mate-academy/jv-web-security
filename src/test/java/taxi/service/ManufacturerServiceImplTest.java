package taxi.service;

import java.util.Arrays;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import taxi.dao.ManufacturerDao;
import taxi.model.Manufacturer;

class ManufacturerServiceImplTest {
    @Mock
    private ManufacturerDao manufacturerDao;

    @InjectMocks
    private ManufacturerServiceImpl manufacturerService;

    @BeforeEach
    public void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    public void testCreate() {
        Manufacturer manufacturer = new Manufacturer("Toyota", "Ukraine");
        Mockito.when(manufacturerDao.create(manufacturer)).thenReturn(manufacturer);
        Manufacturer created = manufacturerService.create(manufacturer);
        Assertions.assertEquals(manufacturer, created);
    }

    @Test
    public void testGet() {
        Manufacturer manufacturer = new Manufacturer("Toyota", "Ukraine");
        Mockito.when(manufacturerDao.get(1L)).thenReturn(Optional.of(manufacturer));
        Manufacturer found = manufacturerService.get(1L);
        Assertions.assertEquals(manufacturer, found);
    }

    @Test
    public void testGetNotFound() {
        Mockito.when(manufacturerDao.get(1L)).thenReturn(Optional.empty());
        Assertions.assertThrows(NoSuchElementException.class, () -> {
            manufacturerService.get(1L);
        });
    }

    @Test
    public void testGetAll() {
        List<Manufacturer> manufacturers = Arrays.asList(
                new Manufacturer("Toyota", "Ukraine"),
                new Manufacturer("Honda", "Ukraine")
        );
        Mockito.when(manufacturerDao.getAll()).thenReturn(manufacturers);
        List<Manufacturer> found = manufacturerService.getAll();
        Assertions.assertEquals(manufacturers, found);
    }

    @Test
    public void testUpdate() {
        Manufacturer manufacturer = new Manufacturer("Toyota", "Ukraine");
        Mockito.when(manufacturerDao.update(manufacturer)).thenReturn(manufacturer);
        Manufacturer updated = manufacturerService.update(manufacturer);
        Assertions.assertEquals(manufacturer, updated);
    }

    @Test
    public void testDelete() {
        Mockito.when(manufacturerDao.delete(1L)).thenReturn(true);
        Assertions.assertTrue(manufacturerService.delete(1L));
    }

    @Test
    public void testDeleteNotFound() {
        Mockito.when(manufacturerDao.delete(1L)).thenReturn(false);
        Assertions.assertFalse(manufacturerService.delete(1L));
    }
}