package taxi.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import taxi.lib.Service;
import taxi.model.Driver;
import taxi.model.Role;

@Service
public class DriverParserServiceImpl implements DriverParserService {

    @Override
    public Driver parseDriver(ResultSet resultSet) throws SQLException {
        Long driverId = resultSet.getObject("id", Long.class);
        String name = resultSet.getNString("name");
        String licenseNumber = resultSet.getNString("license_number");
        String login = resultSet.getNString("login");
        String password = resultSet.getNString("password");
        Role role = Role.valueOf(resultSet.getNString("role"));
        Driver driver = new Driver();
        driver.setId(driverId);
        driver.setName(name);
        driver.setLicenseNumber(licenseNumber);
        driver.setLogin(login);
        driver.setPassword(password);
        driver.setRole(role);
        return driver;
    }
}
