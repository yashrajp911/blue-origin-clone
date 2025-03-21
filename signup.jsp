<%@ page import="java.sql.*" %>

<html>
<head>
    <title>Signup Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #F4F4F4;
        }
            h1 {
        text-align: center;
        color: black;
    }

    form {
        max-width: 400px;
        margin: 0 auto;
        background-color: transperent;
        padding-top: 100px;	
        padding: 30px;
        border-radius: 5px;
        box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.5);
    }

    label {
        display: block;
        margin-bottom: 10px;
        color: #333;
        font-weight:800px;
    }

    input[type=text],
    input[type=password] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: none;
        background-color: transperent;
        font-size: 18px;
        border-radius: 5px;
    }

    input[type=submit] {
        background-color: transpernet;
        color: black;
        padding: 10px 20px;
        border: none;
        font-size: 18px;
        cursor: pointer;
        border-radius: 5px;
        
    }

    input[type=submit]:hover {
        background-color: green;
    }
          .video-background {
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        overflow: hidden;
        z-index: -1;
      }
    
      .video-background video {
        position: absolute;
        top: 50%;
        left: 50%;
        min-width: 100%;
        min-height: 100%;
        transform: translate(-50%, -50%);
        z-index: -1;
      }
</style>
</head>
<body>
    <div class="video-background">
      <video autoplay muted loop>
        <source src="videoplayback.mp4" type="video/mp4">

</video>
    </div>
    <h1>Create an Account</h1>
    <form method="post" action="signup.jsp">
        <label for="username">Username:</label>
        <input type="text" name="username" required>
        <br>
        <label for="password">Password:</label>
        <input type="password" name="password" required>
        <br>
        <input type="submit" value="Sign up">
    </form>
    </body>
</html>
    <%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if (username != null && password != null) {
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","QWERTY");
        PreparedStatement ps = conn.prepareStatement("INSERT INTO login(username, password) VALUES (?, ?)");
        ps.setString(1, username);
        ps.setString(2, password);
        int rowsAffected = ps.executeUpdate();
        if(rowsAffected > 0) {
            response.sendRedirect("login.jsp");
        } else {
            out.println("Error registering user.");
        }
    } catch(Exception e) {
        out.println(e);
    }
}
%>
