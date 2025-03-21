<%@ page import="java.sql.*" %>
<%
String EMAIL = request.getParameter("EMAIL");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/email","root","QWERTY");
    PreparedStatement ps = conn.prepareStatement("insert into records(email) values(?);");
    ps.setString(1,EMAIL);
    int x= ps.executeUpdate();
    if(x>0){
    	out.println("Registered Successfully");
    }else{
    	out.println("Please Try Again!");
    }
    	
}catch(Exception e){
	out.println(e);
}

%>