import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "PickColor", urlPatterns = "/view-color")
public class PickColor extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String color = request.getParameter("color");
        String outputResponse = "<body style=\"background-color: " + color + "\">You Picked the color: " + color +"</body>";


        PrintWriter out = response.getWriter();
        out.println(outputResponse);
    }

}
