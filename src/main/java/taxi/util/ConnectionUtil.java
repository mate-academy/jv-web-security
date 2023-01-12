package taxi.util;

import com.mysql.cj.jdbc.MysqlDataSource;
import java.sql.Connection;
import java.sql.SQLException;

public class ConnectionUtil {
    private static final String URL =
            "jdbc:mysql://database-1.ce1evjpqz2iu.eu-west-3.rds"
                    + ".amazonaws.com:3306/taxi?serverTimezone=UTC";
    private static final String USERNAME = "admin";
    private static final String PASSWORD = "29041987Ukr!";

    public static Connection getConnection() {
        MysqlDataSource mysqlDataSource = new MysqlDataSource();
        mysqlDataSource.setURL(URL);
        mysqlDataSource.setPassword(PASSWORD);
        mysqlDataSource.setUser(USERNAME);
        try {
            return mysqlDataSource.getConnection();
        } catch (SQLException e) {
            throw new RuntimeException("Can't create connection to DB ", e);
        }
    }
}
