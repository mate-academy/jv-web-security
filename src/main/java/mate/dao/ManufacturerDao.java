package mate.dao;

import java.util.Optional;
import mate.model.Manufacturer;

public interface ManufacturerDao extends GenericDao<Manufacturer> {
    Optional<Manufacturer> getManufacturerByName(String name);
}
