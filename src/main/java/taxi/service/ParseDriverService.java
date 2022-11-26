package taxi.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import taxi.model.Driver;

public interface ParseDriverService {
    Driver parseDriverFromResultSet(ResultSet resultSet) throws SQLException;
}
