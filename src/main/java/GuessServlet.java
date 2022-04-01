import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "GuessServlet", urlPatterns = "/guess")
public class GuessServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String number = request.getParameter("number");

        if(number.equals("3") || number.equals("0")) {
            System.out.println(true);
            response.sendRedirect("correct");

        } else {
            response.sendRedirect("incorrect");
            System.out.println(false);
        }
        request.setAttribute("number", number);
    }

}
