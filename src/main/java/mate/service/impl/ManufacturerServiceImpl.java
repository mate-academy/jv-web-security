package mate.service.impl;

import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;
import mate.dao.ManufacturerDao;
import mate.exception.DataProcessingException;
import mate.lib.Inject;
import mate.lib.Service;
import mate.model.Manufacturer;
import mate.service.ManufacturerService;

@Service
public class ManufacturerServiceImpl implements ManufacturerService {
    @Inject
    private ManufacturerDao manufacturerDao;
    
    @Override
    public Manufacturer create(Manufacturer manufacturer) {
        Optional<Manufacturer> optionalManufacturer =
                manufacturerDao.getManufacturerByName(manufacturer.getName());
        if (optionalManufacturer.isPresent()) {
            throw new RuntimeException("Manufacturer with same Name already exist");
        }
        return manufacturerDao.create(manufacturer);
    }

    @Override
    public Manufacturer get(Long id) {
        try {
            return manufacturerDao.get(id).orElseThrow();
        } catch (NoSuchElementException e) {
            throw new DataProcessingException("Don't exist Manufacturer dy id " + id, e);
        }
    }

    @Override
    public List<Manufacturer> getAll() {
        return manufacturerDao.getAll();
    }

    @Override
    public Manufacturer update(Manufacturer manufacturer) {

        Optional<Manufacturer> optionalManufacturer =
                manufacturerDao.getManufacturerByName(manufacturer.getName());
        if (optionalManufacturer.isPresent()
                && !optionalManufacturer.get().getId().equals(manufacturer.getId())) {
            throw new RuntimeException("Manufacturer with same Name already exist");
        }
        return manufacturerDao.update(manufacturer);
    }

    @Override
    public boolean delete(Long id) {
        return manufacturerDao.delete(id);
    }
}
