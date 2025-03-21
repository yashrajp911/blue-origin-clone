

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out=response.getWriter();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","QWERTY");
			String n = request.getParameter("Uname");
			String p = request.getParameter("Pwd");
			
			PreparedStatement ps=con.prepareStatement("select username from login where username=? and password=?");
			ps.setString(1, n);
			ps.setString(2, p);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				RequestDispatcher rd=request.getRequestDispatcher("Blue Origin.html");
				rd.forward(request,response);
			}
			else {
				out.println("Login Failed!!");
				out.println("<a href=login.jsp>Try Again!!</a>");
			}


		}catch(ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
	
			e.printStackTrace();
		}
	}

}
