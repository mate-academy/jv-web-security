package taxi.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Optional;
import taxi.model.Driver;

public interface DriverDao extends GenericDao<Driver> {
    Driver parseDriverFromResultSet(ResultSet resultSet) throws SQLException;
    
    Optional<Driver> findByLogin(String login);
}
