import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.sql.DriverManager;

import com.mysql.cj.jdbc.Driver;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getURL(),
                    config.getUser(),
                    config.getPass()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error creating constructor", e);
        }
    }

    private Ad getAds(ResultSet rs) throws SQLException {
        return new Ad(
                rs.getLong("user_id"),
                rs.getString("title"),
                rs.getString("description")
        );
    }

    private String createInsertQuery(Ad ad) {
        return "INSERT INTO ads(user_id, title, description) VALUES "
                + "(" + ad.getUserId() + ", "
                + "'" + ad.getTitle() +"', "
                + "'" + ad.getDescription() + "')";
    }

    @Override
    public List<Ad> all() {
        Statement statement = null;
        List<Ad> ad = new ArrayList<>();
        try {
            statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM ads");
            while (rs.next()) {
                ad.add(getAds(rs));
            }
            return ad;
        } catch (SQLException e) {
            throw new RuntimeException("Error Displaying all Ads", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            Statement statement = this.connection.createStatement();
            statement.executeUpdate(createInsertQuery(ad), Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = statement.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("error in insert method", e);
        }
    }
}
