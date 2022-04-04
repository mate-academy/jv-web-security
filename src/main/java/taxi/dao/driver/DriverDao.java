package taxi.dao.driver;

import java.util.Optional;
import taxi.dao.GenericDao;
import taxi.model.Driver;

public interface DriverDao extends GenericDao<Driver> {
    Optional<Driver> findByLogin(String login);
}
