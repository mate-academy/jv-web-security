package taxi.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.exception.DataProcessingException;
import taxi.util.ConnectionUtil;

@WebServlet(urlPatterns = "/index")
public class IndexController extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Long driverId = (Long) req.getSession().getAttribute("driver_id");
        req.setAttribute("userName", findNameByLogin(driverId));
        req.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(req, resp);
    }

    public String findNameByLogin(Long driverId) {
        String query = "SELECT * FROM drivers WHERE id = ? AND is_deleted = FALSE";
        try (Connection connection = ConnectionUtil.getConnection();
                PreparedStatement getDriverStatement = connection.prepareStatement(query)) {
            getDriverStatement.setLong(1, driverId);
            ResultSet resultSet = getDriverStatement.executeQuery();
            String name = "";
            if (resultSet.next()) {
                name = resultSet.getString("name");
            }
            return name;
        } catch (SQLException e) {
            throw new DataProcessingException("Couldn't get driver by id " + driverId, e);
        }
    }
}
