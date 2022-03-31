import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;

@WebServlet(name = "LoginServlet", urlPatterns = "/login-check")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String outputResponse = "<h1>checking login info</h1>";
        String errorResponse = "<h1>Login Info was Incorrect</h1>";

        if(request.getParameter("name").equals("admin") && request.getParameter("pass").equals("1234")) {
            response.sendRedirect("profile.jsp");
        } else {
            PrintWriter out = response.getWriter();
            out.println(errorResponse);
        }

        PrintWriter out = response.getWriter();
        out.println(outputResponse);
    }

}
