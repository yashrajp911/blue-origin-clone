<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Aerospace Login Page</title>
    <style>
      body {
        color: transperent;
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
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
    
      .container {
        width: 400px;
        margin: 0 auto;
        text-align: center;
        position: relative;
        z-index: 1;
        border-radius:50%;
        border:2px solid bl;
        background-color:transperent;
      }
    
      h1 {
        font-size: 36px;
        margin-bottom: 20px;
      }
    
      label {
        font-size: 18px;
        display: block;
        margin-bottom: 10px;
      }
    
      input[type=text], input[type=password] {
        padding: 10px;
        margin-bottom: 20px;
        border: none;
        background-color: transperent;
        font-size: 18px;
        border-radius:7px;
      }
    
      button[type=submit] {
        background-color: #333;
        color: #fff;
        padding: 10px 20px;
        border: none;
        font-size: 18px;
        cursor: pointer;
      }
    
      button[type=submit]:hover {
        background-color: blue;
      }
      .proc:hover {
        background: transparent;
    opacity: 0.5;
  }
  </style>
  
<meta charset="ISO-8859-1">
<title>Aerospace</title>
</head>
<body>
    <div class="video-background">
      <video autoplay muted loop>
        <source src="4K Footage _ SpaceX Launches.mp4" type="video/mp4">

</video>
    </div>
<div class=container>
<h1>Login</h1>

<form action=LoginServlet method=post>
<p>Enter Name:
<br><input type=text name=Uname></p>
<p>Enter Password:<br><input type=password name=Pwd></p><br>
<p><input type=submit value=Login><input type=reset></p>
<p>Don't have an account? <a href="signup.jsp">Sign up</a> here.</p>
 </div>       
 </form>

</body>
</html>
