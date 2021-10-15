package mate.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionDeployUtil {
    public static final String DRIVER_NAME = "com.mysql.jdbc.Driver";
    public static final String URL =
            "jdbc:mysql://remotemysql.com:3306/hndaC76Bt4?serverTimezone=UTC";
    public static final String USER = "hndaC76Bt4";
    public static final String PASSWORD = "CE7jZpGC4B";

    static {
        try {
            Class.forName(DRIVER_NAME);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Can't load JDBC driver for MySQL", e);
        }
    }

    public static Connection getConnect() {
        try {
            Properties dbProperties = new Properties();
            dbProperties.put("user", USER);
            dbProperties.put("password", PASSWORD);
            return DriverManager.getConnection(URL, dbProperties);
        } catch (SQLException e) {
            throw new RuntimeException("Can't create connection to DB", e);
        }
    }
}
