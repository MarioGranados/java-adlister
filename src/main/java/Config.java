import java.sql.DriverManager;

public class Config {
    public String getURL() {
        return "jdbc:mysql://localhost:3306/codeup_test_db?allowPublicKeyRetrieval=true&useSSL=false";
    }
    public String getUser() {
        return "root";
    }
    public String getPass() {
        return "passsword";
    }
}
