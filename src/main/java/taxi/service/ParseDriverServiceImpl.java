package taxi.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class ParseDriverServiceImpl implements ParseDriverService {
    @Override
    public Driver parseDriverFromResultSet(ResultSet resultSet) throws SQLException {
        Long id = resultSet.getObject("id", Long.class);
        String name = resultSet.getString("name");
        String licenseNumber = resultSet.getString("license_number");
        String login = resultSet.getString("login");
        String password = resultSet.getString("password");
        Driver driver = new Driver();
        driver.setId(id);
        driver.setName(name);
        driver.setLicenseNumber(licenseNumber);
        driver.setLogin(login);
        driver.setPassword(password);
        return driver;
    }
}
