import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ads")
public class ShowAdsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
        // Use the factory to get the dao object
        Ads productsDao = DaoFactory.getAdsDao();
        // Use a method on the dao to get all the products
        List<Ad> ad = productsDao.all();
        // Pass the data to the jsp
        request.setAttribute("ad", ad);
        request.getRequestDispatcher("/ads/index.jsp").forward(request, resp);
    }
}