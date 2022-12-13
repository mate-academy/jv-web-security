package taxi.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionUtil {
    private static final String URL = "mysql://kp6nwg7gfi45xc8n"
            + ":p7ys0m2lpfe2tg6a@clwxydcjair55xn0.chr7pe7iynqr.eu-west-1.rds.amazonaws.com"
            + ":3306/vqjb8k4o4gba8kwo";
    private static final String USERNAME = "kp6nwg7gfi45xc8n";
    private static final String PASSWORD = "p7ys0m2lpfe2tg6a";
    private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";

    static {
        try {
            Class.forName(JDBC_DRIVER);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Can't find SQL Driver", e);
        }
    }

    public static Connection getConnection() {
        Properties dbProperties = new Properties();
        dbProperties.setProperty("user", USERNAME);
        dbProperties.setProperty("password", PASSWORD);
        try {
            return DriverManager.getConnection(URL, dbProperties);
        } catch (SQLException e) {
            throw new RuntimeException("Can't create connection to DB ", e);
        }
    }
}
