package taxi.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import taxi.model.Driver;

public interface DriverParserService {
    Driver parseDriver(ResultSet resultSet) throws SQLException;
}
