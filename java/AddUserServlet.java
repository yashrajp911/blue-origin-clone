import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddUserServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve the name and email parameters from the form submission
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        
        // Create a new user object with the name and email
        User user = new User(name, email);
        
        // Add the new user to a database or another data source
        // ...
        
        // Redirect the user back to the home page
        response.sendRedirect("index.jsp");
}
}