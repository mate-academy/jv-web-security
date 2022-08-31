package taxi.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import taxi.dao.UserDao;
import taxi.exception.DataProcessingException;
import taxi.lib.Dao;
import taxi.model.Driver;
import taxi.model.User;
import taxi.util.ConnectionUtil;

@Dao
public class UserDaoImpl implements UserDao {
    @Override
    public User create(User user) {
        String query = "INSERT INTO users(login, password, driver_id) "
                + "VALUES (?, ?, ?)";
        try (Connection connection = ConnectionUtil.getConnection();
                PreparedStatement statement = connection.prepareStatement(query,
                        Statement.RETURN_GENERATED_KEYS)) {
            statement.setString(1, user.getLogin());
            statement.setString(2, user.getPassword());
            statement.setLong(3, user.getDriver().getId());
            statement.executeUpdate();
            ResultSet generatedKeys = statement.getGeneratedKeys();
            if (generatedKeys.next()) {
                user.setId(generatedKeys.getLong(1));
            }
            return user;
        } catch (SQLException e) {
            throw new DataProcessingException("Couldn't create "
                    + user + ". ", e);
        }
    }

    @Override
    public Optional<User> getByLogin(String login) {
        String query = "SELECT * FROM users WHERE login = ? AND is_deleted = FALSE";
        Long driverId = null;
        User user = null;
        try (Connection connection = ConnectionUtil.getConnection();
                PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, login);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                user = parseUserFromResultSet(resultSet);
                driverId = resultSet.getLong("driver_id");
            }
        } catch (SQLException e) {
            throw new DataProcessingException("Couldn't get driver by login = " + login, e);
        }
        if (driverId != null) {
            user.setDriver(getDriver(driverId).orElseThrow(() ->
                    new RuntimeException("Can`t find driver by user login " + login)));
        }
        return Optional.ofNullable(user);
    }

    @Override
    public Optional<User> get(Long id) {
        String query = "SELECT * FROM users WHERE id = ? AND is_deleted = FALSE";
        Long driverId = null;
        User user = null;
        try (Connection connection = ConnectionUtil.getConnection();
                PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setLong(1, id);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                user = parseUserFromResultSet(resultSet);
                driverId = resultSet.getLong("driver_id");
            }
        } catch (SQLException e) {
            throw new DataProcessingException("Couldn't get driver by id = " + id, e);
        }
        if (driverId != null) {
            user.setDriver(getDriver(driverId).orElseThrow(() ->
                    new RuntimeException("Can`t find driver by user id " + id)));
        }
        return Optional.ofNullable(user);
    }

    @Override
    public List<User> getAll() {
        String query = "SELECT * FROM users WHERE is_deleted = FALSE";
        List<User> users = new ArrayList<>();
        List<Long> driversId = new ArrayList<>();
        try (Connection connection = ConnectionUtil.getConnection();
                PreparedStatement statement = connection.prepareStatement(query)) {
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                users.add(parseUserFromResultSet(resultSet));
                driversId.add(resultSet.getLong("driver_id"));
            }
        } catch (SQLException e) {
            throw new DataProcessingException("Couldn't get a list of users from usersDB.",
                    e);
        }
        for (int i = 0; i < users.size(); i++) {
            users.get(i).setDriver(getDriver(driversId.get(i))
                    .orElseThrow(() ->
                            new RuntimeException("Couldn't get a list of users from usersDB.")));
        }
        return users;
    }

    @Override
    public User update(User user) {
        String query = "UPDATE users "
                + "SET password = ?, driver_id = ? "
                + "WHERE login = ? AND is_deleted = FALSE";
        try (Connection connection = ConnectionUtil.getConnection();
                PreparedStatement statement
                        = connection.prepareStatement(query)) {
            statement.setString(1, user.getPassword());
            statement.setLong(2, user.getDriver().getId());
            statement.setString(3, user.getLogin());
            statement.executeUpdate();
            return user;
        } catch (SQLException e) {
            throw new DataProcessingException("Couldn't update "
                    + user + " in usersDB.", e);
        }
    }

    @Override
    public boolean delete(Long id) {
        String query = "UPDATE users SET is_deleted = TRUE WHERE id = ?";
        try (Connection connection = ConnectionUtil.getConnection();
                PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setLong(1, id);
            return statement.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new DataProcessingException("Couldn't delete user with id " + id, e);
        }
    }

    private User parseUserFromResultSet(ResultSet resultSet) throws SQLException {
        String login = resultSet.getString("login");
        String password = resultSet.getString("password");
        Long driverId = resultSet.getLong("driver_id");
        Long id = resultSet.getLong("id");
        User user = new User();
        user.setId(id);
        user.setLogin(login);
        user.setPassword(password);
        return user;
    }

    private Optional<Driver> getDriver(Long id) {
        String query = "SELECT * FROM drivers WHERE id = ? AND is_deleted = FALSE";
        try (Connection connection = ConnectionUtil.getConnection();
                PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setLong(1, id);
            ResultSet resultSet = statement.executeQuery();
            Driver driver = null;
            if (resultSet.next()) {
                driver = parseDriverFromResultSet(resultSet);
            }
            return Optional.ofNullable(driver);
        } catch (SQLException e) {
            throw new DataProcessingException("Couldn't get driver by id " + id, e);
        }
    }

    private Driver parseDriverFromResultSet(ResultSet resultSet) throws SQLException {
        Long id = resultSet.getLong("id");
        String name = resultSet.getString("name");
        String licenseNumber = resultSet.getString("license_number");
        Driver driver = new Driver();
        driver.setId(id);
        driver.setName(name);
        driver.setLicenseNumber(licenseNumber);
        return driver;
    }
}
