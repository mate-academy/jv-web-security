package taxi.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.util.TimeZone;
import javax.annotation.PostConstruct;

public class ConnectionUtil {
    private static final String URL = "jdbc:mysql://localhost:3306"
            + "/taxi?useUnicode=true&serverTimezone=UTC";

    private static final String USERNAME = "root";
    private static final String PASSWORD = "yamaha";
    private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";

    @PostConstruct
    void started() {
        TimeZone.setDefault(TimeZone.getTimeZone("UTC"));
    }

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
