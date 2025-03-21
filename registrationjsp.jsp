<%@ page import="java.sql.*" %>
<%
String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");
String email = request.getParameter("email");
String phonenumber = request.getParameter("phonenumber");
String address_one = request.getParameter("address_one");
String address_two = request.getParameter("address_two");
String city = request.getParameter("city");
String state = request.getParameter("state");
String zip = request.getParameter("zip");
String country = request.getParameter("country");
String dob = request.getParameter("dob");
String when = request.getParameter("when");
String numberofseats = request.getParameter("numberofseats");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","QWERTY");
    PreparedStatement ps = conn.prepareStatement("insert into register(firstname,lastname,email,phonenumber,address_one,address_two,city,state,zipcode,country,date_of_birth,when_to_fly,numer_of_seats) values(?,?,?,?,?,?,?,?,?,?,?,?,?);");
    ps.setString(1,firstname);
    ps.setString(2,lastname);
    ps.setString(3,email);
    ps.setString(4,phonenumber);
    ps.setString(5,address_one);
    ps.setString(6,address_two);
    ps.setString(7,city);
    ps.setString(8,state);
    ps.setString(9,zip);
    ps.setString(10,country);
    ps.setString(11,dob);
    ps.setString(12,when);
    ps.setString(13,numberofseats);
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