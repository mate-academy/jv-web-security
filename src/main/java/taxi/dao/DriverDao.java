package taxi.dao;

import java.sql.SQLException;
import java.util.Optional;
import taxi.model.Driver;

public interface DriverDao extends GenericDao<Driver> {
    Optional<Driver> findByLogin(String login) throws SQLException;
}
