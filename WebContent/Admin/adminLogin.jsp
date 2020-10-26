<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="../style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
  <div class="container-fluid">
	<nav class="navbar navbar-inverse">
    <ul class="nav navbar-nav">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Login<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="../Student/studentLogin.jsp">Student</a></li>
          <li><a href="../Teacher/teacherLogin.jsp">Teacher</a></li>
          <li><a href="adminLogin.jsp">Admin</a></li>
        </ul>
      </li>
    </ul>
	</nav>
  </div>
	
<div class= "login">
<h3>Admin Login</h3>
<hr>
 <form action="adminLoginDAO.jsp" method="post">

  <div>
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
        
    <button type="submit">Login</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <div style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
  </div>
 </form>
</div>
  
</body>
</html>