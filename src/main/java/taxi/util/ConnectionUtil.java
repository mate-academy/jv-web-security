package taxi.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionUtil {
    private static final String USER = "user";
    private static final String ROOT = "root";
    private static final String PASSWORD = "password";
    private static final String PASSWORD_VALUE = "7399269";
    private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String CONNECTION_URL = "jdbc:mysql://localhost:3306/taxi"
            + "?useUnicode=true&useJDBCCompliantTimezoneShift=true"
            + "&useLegacyDatetimeCode=false&serverTimezone=UTC";

    static {
        try {
            Class.forName(JDBC_DRIVER);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Can't load JDBC driver for MySQL", e);
        }
    }

    public static Connection getConnection() {
        try {
            Properties dbProperties = new Properties();
            dbProperties.put(USER, ROOT);
            dbProperties.put(PASSWORD, PASSWORD_VALUE);
            return DriverManager.getConnection(
                    CONNECTION_URL, dbProperties);
        } catch (SQLException e) {
            throw new RuntimeException("Can't create connection to DB", e);
        }
    }
}
