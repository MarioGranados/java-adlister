import com.mysql.cj.protocol.Resultset;
import com.mysql.jdbc.Driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

public class MySQLAdsDao implements Ads{
    private Connection connection;

    public MySQLAdsDao(Config config) throws SQLException {
        try {
            DriverManager.registerDriver(new Driver());
            this.connection = DriverManager.getConnection(
                    config.getURL(),
                    config.getUser(),
                    config.getPass()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error creating constructor");
        }
    }

    @Override
    public List<Ad> all() {
        try {

        }catch (SQLException)
        return null;
    }

    @Override
    public Long insert(Ad ad) {
        return null;
    }
}
