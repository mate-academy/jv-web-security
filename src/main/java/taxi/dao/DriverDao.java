package taxi.dao;

import java.util.Optional;
import taxi.lib.Dao;
import taxi.model.Driver;

@Dao
public interface DriverDao extends GenericDao<Driver> {
    Optional<Driver> findByLogin(String login);
}
