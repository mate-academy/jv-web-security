package mate.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import mate.dao.DriverDao;
import mate.exception.DataProcessingException;
import mate.lib.Dao;
import mate.model.Driver;
import mate.util.ConnectionDeployUtil;

@Dao
public class DriverDaoImpl implements DriverDao {
    @Override
    public Driver create(Driver driver) {
        String insertDriverRequest = "INSERT "
                + "INTO drivers(name, login, password,license_number) "
                + "VALUES(?, ?, ?, ?);";
        try (Connection connection = ConnectionDeployUtil.getConnect();
                 PreparedStatement insertDriverStatement =
                             connection.prepareStatement(insertDriverRequest,
                                 Statement.RETURN_GENERATED_KEYS)) {
            insertDriverStatement.setString(1, driver.getName());
            insertDriverStatement.setString(2, driver.getLogin());
            insertDriverStatement.setString(3, driver.getPassword());
            insertDriverStatement.setString(4, driver.getLicenseNumber());
            insertDriverStatement.executeUpdate();
            ResultSet resultSet = insertDriverStatement.getGeneratedKeys();
            if (resultSet.next()) {
                driver.setId(resultSet.getObject("id", Long.class));
            }
        } catch (SQLException e) {
            throw new DataProcessingException("Can't insert driver"
                    + driver + "  to DB", e);
        }
        return driver;
    }

    @Override
    public Optional<Driver> get(Long id) {
        String getDriverByIdRequest = "SELECT * FROM drivers "
                + "WHERE is_deleted = false AND id = ?;";
        Driver driver = null;
        try (Connection connection = ConnectionDeployUtil.getConnect();
                 PreparedStatement getDriverByIdStatement = connection
                         .prepareStatement(getDriverByIdRequest)) {
            getDriverByIdStatement.setLong(1, id);
            ResultSet resultSet = getDriverByIdStatement.executeQuery();
            while (resultSet.next()) {
                driver = parseResultSet(resultSet);
            }
        } catch (SQLException e) {
            throw new DataProcessingException("Can't get drivers "
                    + driver + "  to DB", e);
        }
        return Optional.ofNullable(driver);
    }

    @Override
    public List<Driver> getAll() {
        String getAllDriversRequest = "SELECT * FROM drivers WHERE is_deleted = false;";
        List<Driver> allDriversList = new ArrayList<>();
        try (Connection connection = ConnectionDeployUtil.getConnect();
                  PreparedStatement getAllDriversStatement = connection
                             .prepareStatement(getAllDriversRequest)) {
            ResultSet resultSet = getAllDriversStatement.executeQuery();
            while (resultSet.next()) {
                allDriversList.add(parseResultSet(resultSet));
            }
        } catch (SQLException e) {
            throw new DataProcessingException("Can't get all Drivers from DB", e);
        }
        return allDriversList;
    }

    @Override
    public Driver update(Driver driver) {
        String updateDriverRequest = "UPDATE drivers "
                + "SET name = ?, login = ?, password = ?, license_number = ? "
                + "WHERE is_deleted = false AND id  = ?;";
        String getDriverByIdRequest = "SELECT * FROM drivers "
                + "WHERE is_deleted = false AND id = ?;";
        try (Connection connection = ConnectionDeployUtil.getConnect();
                 PreparedStatement updateDriverStatement =
                         connection.prepareStatement(updateDriverRequest);
                 PreparedStatement getDriverByIdStatement =
                         connection.prepareStatement(getDriverByIdRequest)) {
            Driver oldDriver = null;
            getDriverByIdStatement.setLong(1, driver.getId());
            ResultSet resultSet = getDriverByIdStatement.executeQuery();
            while (resultSet.next()) {
                oldDriver = parseResultSet(resultSet);
            }
            updateDriverStatement.setString(1, driver.getName());
            updateDriverStatement.setString(2, driver.getLogin());
            updateDriverStatement.setString(3, driver.getPassword());
            updateDriverStatement.setString(4, driver.getLicenseNumber());
            updateDriverStatement.setLong(5, driver.getId());
            updateDriverStatement.executeUpdate();
            return oldDriver;
        } catch (SQLException e) {
            throw new DataProcessingException("Can't update driver by id "
                    + driver.getId() + " from DB", e);
        }
    }

    @Override
    public boolean delete(Long id) {
        String deleteRequest = "UPDATE drivers SET is_deleted = true WHERE id  = ?;";
        try (Connection connection = ConnectionDeployUtil.getConnect();
                 PreparedStatement deleteStatement =
                         connection.prepareStatement(deleteRequest)) {
            deleteStatement.setLong(1, id);
            return deleteStatement.executeUpdate() >= 1;
        } catch (SQLException e) {
            throw new DataProcessingException("Can't delete driver by id "
                    + id + " from DB", e);
        }
    }

    public Optional<Driver> findByLicenseNumber(String licenseNumber) {
        String existByLicenseNumberRequest = "SELECT * FROM drivers "
                + "WHERE is_deleted = false AND license_number = ?;";
        Driver driver = null;
        try (Connection connection = ConnectionDeployUtil.getConnect();
                 PreparedStatement existByLicenseNumberStatement =
                         connection.prepareStatement(existByLicenseNumberRequest)) {
            existByLicenseNumberStatement.setString(1, licenseNumber);
            ResultSet resultSet = existByLicenseNumberStatement.executeQuery();
            if (resultSet.next()) {
                driver = parseResultSet(resultSet);
            }
        } catch (SQLException e) {
            throw new DataProcessingException("Can't find driver by license number"
                    + driver + " from DB", e);
        }
        return Optional.ofNullable(driver);
    }

    @Override
    public Optional<Driver> findByLogin(String login) {
        String findByLoginRequest = "SELECT * FROM drivers "
                + "WHERE is_deleted = false AND login = ?;";
        Driver driver = null;
        try (Connection connection = ConnectionDeployUtil.getConnect();
                     PreparedStatement findByLoginStatement =
                             connection.prepareStatement(findByLoginRequest)) {
            findByLoginStatement.setString(1, login);
            ResultSet resultSet = findByLoginStatement.executeQuery();
            if (resultSet.next()) {
                driver = parseResultSet(resultSet);
            }
        } catch (SQLException e) {
            throw new DataProcessingException("Can't find driver by login"
                    + driver + " from DB", e);
        }
        return Optional.ofNullable(driver);
    }

    private Driver parseResultSet(ResultSet resultSet) throws SQLException {
        Driver driver = new Driver();
        Long id = resultSet.getObject("id", Long.class);
        String name = resultSet.getString("name");
        String login = resultSet.getString("login");
        String password = resultSet.getString("password");
        String licenseNumber = resultSet.getString("license_number");
        driver.setId(id);
        driver.setName(name);
        driver.setLogin(login);
        driver.setPassword(password);
        driver.setLicenseNumber(licenseNumber);
        return driver;
    }
}
