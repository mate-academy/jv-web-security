package taxi.service;

import taxi.model.Driver;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface ParseDriverService {
    Driver parseDriverFromResultSet(ResultSet resultSet) throws SQLException;
}
