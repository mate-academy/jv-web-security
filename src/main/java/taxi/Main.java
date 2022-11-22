package taxi;

import taxi.dao.DriverDao;
import taxi.dao.DriverDaoImpl;

public class Main {
    public static void main(String[] args) {
        DriverDao driverDao = new DriverDaoImpl();
        System.out.println(driverDao.findByLogin("vasya@gmail"));
    }
}
