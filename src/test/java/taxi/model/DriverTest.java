package taxi.model;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

class DriverTest {
    @Test
    public void testSetAndGetId() {
        Driver driver = new Driver();
        Long id = 12345L;
        driver.setId(id);
        Assertions.assertEquals(id, driver.getId());
    }

    @Test
    public void testSetAndGetName() {
        Driver driver = new Driver();
        String name = "John Doe";
        driver.setName(name);
        Assertions.assertEquals(name, driver.getName());
    }

    @Test
    public void testSetAndGetLicenseNumber() {
        Driver driver = new Driver();
        String licenseNumber = "123456789";
        driver.setLicenseNumber(licenseNumber);
        Assertions.assertEquals(licenseNumber, driver.getLicenseNumber());
    }

    @Test
    public void testSetAndGetLogin() {
        Driver driver = new Driver();
        String login = "johndoe";
        driver.setLogin(login);
        Assertions.assertEquals(login, driver.getLogin());
    }

    @Test
    public void testSetAndGetPassword() {
        Driver driver = new Driver();
        String password = "p@ssw0rd";
        driver.setPassword(password);
        Assertions.assertEquals(password, driver.getPassword());
    }
    @Test
    public void testEquals() {
        Driver driver1 = new Driver(1L, "John Doe", "ABC123", "johndoe", "password");
        Driver driver2 = new Driver(1L, "John Doe", "ABC123", "johndoe", "password");
        Driver driver3 = new Driver(2L, "Jane Smith", "XYZ789", "janesmith", "password");
        Assertions.assertTrue(driver1.equals(driver2));
        Assertions.assertTrue(driver2.equals(driver1));
        Assertions.assertFalse(driver1.equals(driver3));
        Assertions.assertFalse(driver3.equals(driver1));
        Assertions.assertFalse(driver2.equals(driver3));
        Assertions.assertFalse(driver3.equals(driver2));
    }

    @Test
    public void testHashCode() {
        Driver driver1 = new Driver(1L, "John Doe", "ABC123", "johndoe", "password");
        Driver driver2 = new Driver(1L, "John Doe", "ABC123", "johndoe", "password");
        Driver driver3 = new Driver(2L, "Jane Smith", "XYZ789", "janesmith", "password");
        Assertions.assertEquals(driver1.hashCode(), driver2.hashCode());
        Assertions.assertNotEquals(driver1.hashCode(), driver3.hashCode());
        Assertions.assertNotEquals(driver2.hashCode(), driver3.hashCode());
    }

    @Test
    public void testToString() {
        Driver driver = new Driver(1L, "John Doe", "ABC123", "johndoe", "password");
        String expected = "Driver{id=1, name='John Doe', licenseNumber='ABC123'}";
        Assertions.assertEquals(expected, driver.toString());
    }
}
