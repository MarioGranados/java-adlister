import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "PizzaServlet", urlPatterns = "/pizza-order")
public class PizzaServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String outputResponse = "<h1>Your order</h1>";

        String crust = request.getParameter("crust");
        String cheeseAmount = request.getParameter("cheeseAmount");
        String sauceType = request.getParameter("sauceType");
        String sauceAmount = request.getParameter("sauceAmount");
        String beef = request.getParameter("beef");
        String ham = request.getParameter("ham");
        String phillySteak = request.getParameter("phillySteak");
        String bacon = request.getParameter("bacon");

        System.out.println(crust);
        System.out.println(cheeseAmount);
        System.out.println(sauceType);
        System.out.println(sauceAmount);
        System.out.println(beef);
        System.out.println(ham);
        System.out.println(phillySteak);
        System.out.println(bacon);

        response.getWriter().println(crust);
        response.getWriter().println(cheeseAmount);
        response.getWriter().println(sauceType);
        response.getWriter().println(sauceAmount);
        response.getWriter().println(beef);
        response.getWriter().println(ham);
        response.getWriter().println(phillySteak);
        response.getWriter().println(bacon);


        PrintWriter out = response.getWriter();
        out.println(outputResponse);
    }

}
