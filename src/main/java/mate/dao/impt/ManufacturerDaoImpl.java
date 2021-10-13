package mate.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import mate.dao.ManufacturerDao;
import mate.exception.DataProcessingException;
import mate.lib.Dao;
import mate.model.Manufacturer;
import mate.util.ConnectionUtil;

@Dao
public class ManufacturerDaoImpl implements ManufacturerDao {
    @Override
    public Manufacturer create(Manufacturer manufacturer) {
        String insertManufacturerRequest = "INSERT INTO manufacturers(name, country) VALUES(?, ?);";
        try (Connection connection = ConnectionUtil.getConnect();
                 PreparedStatement insertManufacturerStatement =
                         connection.prepareStatement(insertManufacturerRequest,
                                 Statement.RETURN_GENERATED_KEYS)) {
            insertManufacturerStatement.setString(1, manufacturer.getName());
            insertManufacturerStatement.setString(2, manufacturer.getCountry());
            insertManufacturerStatement.executeUpdate();
            ResultSet resultSet = insertManufacturerStatement.getGeneratedKeys();
            if (resultSet.next()) {
                manufacturer.setId(resultSet.getObject("id", Long.class));
            }
        } catch (SQLException e) {
            throw new DataProcessingException("Can't insert manufacturer"
                    + manufacturer + "  to DB", e);
        }
        return manufacturer;
    }

    @Override
    public Optional<Manufacturer> get(Long id) {
        String getManufacturerByIdRequest = "SELECT * FROM manufacturers "
                + "WHERE is_deleted = false AND id = ?;";
        Manufacturer manufacturer = null;
        try (Connection connection = ConnectionUtil.getConnect();
                 PreparedStatement getManufacturerByIdStatement = connection
                         .prepareStatement(getManufacturerByIdRequest)) {
            getManufacturerByIdStatement.setLong(1, id);
            ResultSet resultSet = getManufacturerByIdStatement.executeQuery();
            while (resultSet.next()) {
                manufacturer = parseResultSet(resultSet);
            }
        } catch (SQLException e) {
            throw new DataProcessingException("Can't get manufacturers "
                    + manufacturer + "  to DB", e);
        }
        return Optional.ofNullable(manufacturer);
    }

    @Override
    public List<Manufacturer> getAll() {
        String getAllManufacturersRequest = "SELECT * FROM manufacturers WHERE is_deleted = false;";
        List<Manufacturer> allManufacturers = new ArrayList<>();
        try (Connection connection = ConnectionUtil.getConnect();
                 PreparedStatement getAllManufacturersStatement = connection
                         .prepareStatement(getAllManufacturersRequest)) {
            ResultSet resultSet = getAllManufacturersStatement.executeQuery();
            while (resultSet.next()) {
                allManufacturers.add(parseResultSet(resultSet));
            }
        } catch (SQLException e) {
            throw new DataProcessingException("Can't get all manufacturers from DB", e);
        }
        return allManufacturers;
    }

    @Override
    public Manufacturer update(Manufacturer manufacturer) {
        String updateManufactureRequest = "UPDATE manufacturers SET name = ?, country = ? "
                + "WHERE is_deleted = false AND id  = ?;";
        String getManufacturerByIdRequest = "SELECT * FROM manufacturers "
                + "WHERE is_deleted = false AND id = ?;";
        try (Connection connection = ConnectionUtil.getConnect();
                 PreparedStatement updateManufactureStatement =
                         connection.prepareStatement(updateManufactureRequest);
                 PreparedStatement getManufacturerByIdStatement =
                         connection.prepareStatement(getManufacturerByIdRequest)) {
            Manufacturer oldManufacturer = null;
            getManufacturerByIdStatement.setLong(1, manufacturer.getId());
            ResultSet resultSet = getManufacturerByIdStatement.executeQuery();
            while (resultSet.next()) {
                oldManufacturer = parseResultSet(resultSet);
            }
            updateManufactureStatement.setString(1, manufacturer.getName());
            updateManufactureStatement.setString(2, manufacturer.getCountry());
            updateManufactureStatement.setLong(3, manufacturer.getId());
            updateManufactureStatement.executeUpdate();
            return oldManufacturer;
        } catch (SQLException e) {
            throw new DataProcessingException("Can't update manufacturer by id "
                    + manufacturer.getId() + " from DB", e);
        }
    }

    @Override
    public boolean delete(Long id) {
        String deleteRequest = "UPDATE manufacturers SET is_deleted = true WHERE id  = ?;";
        try (Connection connection = ConnectionUtil.getConnect();
                  PreparedStatement deleteStatement =
                             connection.prepareStatement(deleteRequest)) {
            deleteStatement.setLong(1, id);
            return deleteStatement.executeUpdate() >= 1;
        } catch (SQLException e) {
            throw new DataProcessingException("Can't delete manufacturer by id "
                    + id + " from DB", e);
        }
    }

    public Optional<Manufacturer> getManufacturerByName(String name) {
        String existByNameRequest = "SELECT * FROM manufacturers "
                + "WHERE is_deleted = false AND name = ?;";
        Manufacturer manufacturer = null;
        try (Connection connection = ConnectionUtil.getConnect();
                 PreparedStatement existByNameStatement =
                         connection.prepareStatement(existByNameRequest)) {
            existByNameStatement.setString(1, name);
            ResultSet resultSet = existByNameStatement.executeQuery();
            if (resultSet.next()) {
                manufacturer = parseResultSet(resultSet);
            }
        } catch (SQLException e) {
            throw new DataProcessingException("Can't find manufacturer by license number"
                    + manufacturer + " from DB", e);
        }
        return Optional.ofNullable(manufacturer);
    }

    private Manufacturer parseResultSet(ResultSet resultSet) throws SQLException {
        Manufacturer manufacturer = new Manufacturer();
        Long id = resultSet.getObject("id", Long.class);
        String name = resultSet.getString("name");
        String country = resultSet.getString("country");
        manufacturer.setId(id);
        manufacturer.setName(name);
        manufacturer.setCountry(country);
        return manufacturer;
    }
}
