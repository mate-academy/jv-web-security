package taxi.model;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotEquals;
import static org.junit.jupiter.api.Assertions.assertNull;

class ManufacturerTest {
    @Test
    public void testConstructor() {
        Manufacturer manufacturer = new Manufacturer("Tesla", "USA");
        assertEquals("Tesla", manufacturer.getName());
        assertEquals("USA", manufacturer.getCountry());
    }

    @Test
    public void testGetAndSetId() {
        Manufacturer manufacturer = new Manufacturer();
        assertNull(manufacturer.getId());

        Long id = 1L;
        manufacturer.setId(id);
        assertEquals(id, manufacturer.getId());
    }

    @Test
    public void testGetAndSetName() {
        Manufacturer manufacturer = new Manufacturer();
        assertNull(manufacturer.getName());

        String name = "Toyota";
        manufacturer.setName(name);
        assertEquals(name, manufacturer.getName());
    }

    @Test
    public void testGetAndSetCountry() {
        Manufacturer manufacturer = new Manufacturer();
        assertNull(manufacturer.getCountry());

        String country = "Japan";
        manufacturer.setCountry(country);
        assertEquals(country, manufacturer.getCountry());
    }

    @Test
    public void testEquals() {
        Manufacturer manufacturer1 = new Manufacturer("Tesla", "USA");
        Manufacturer manufacturer2 = new Manufacturer("Tesla", "USA");
        Manufacturer manufacturer3 = new Manufacturer("Ford", "USA");

        assertEquals(manufacturer1, manufacturer2);
        assertNotEquals(manufacturer1, manufacturer3);
    }

    @Test
    public void testHashCode() {
        Manufacturer manufacturer1 = new Manufacturer("Tesla", "USA");
        Manufacturer manufacturer2 = new Manufacturer("Tesla", "USA");

        assertEquals(manufacturer1.hashCode(), manufacturer2.hashCode());
    }
}