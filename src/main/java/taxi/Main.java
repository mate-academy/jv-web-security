package taxi;

import taxi.dao.DriverDao;
import taxi.dao.DriverDaoImpl;
import taxi.model.Driver;

public class Main {
    public static void main(String[] args) {
        Driver driver = new Driver("Fu", "13311", "Fu", "123");
        driver.setId(5L);
        DriverDao dao = new DriverDaoImpl();
        dao.update(driver);
    }
}
