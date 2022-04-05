import com.mysql.cj.protocol.Resultset;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

public class MySQLAdsDao implements Ads{
    private Connection connection;
    private Statement statement;

    public MySQLAdsDao(Config config) throws SQLException {

        this.connection = DriverManager.getConnection(
                config.getURL(),
                config.getUser(),
                config.getPass()
        );
        this.statement = connection.createStatement();
    }

    @Override
    public List<Ad> all() {
        Resultset rs = this.statement.executeQuery("SELECT * FROM Ads");
        return Resultset;
    }

    @Override
    public Long insert(Ad ad) {
        return null;
    }
}
