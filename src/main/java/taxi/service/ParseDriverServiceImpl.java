package taxi.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class ParseDriverServiceImpl implements ParseDriverService {
    @Override
    public Driver parse(ResultSet resultSet) throws SQLException {
        Long driverId = resultSet.getObject("id", Long.class);
        String name = resultSet.getNString("name");
        String licenseNumber = resultSet.getNString("license_number");
        String login = resultSet.getString("login");
        String password = resultSet.getString("password");
        Driver driver = new Driver();
        driver.setId(driverId);
        driver.setName(name);
        driver.setLicenseNumber(licenseNumber);
        driver.setLogin(login);
        driver.setPassword(password);
        return driver;
    }
}
