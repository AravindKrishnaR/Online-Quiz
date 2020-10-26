<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="../style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
  <div class="container-fluid">
	<nav class="navbar navbar-inverse">
    <ul class="nav navbar-nav">
      <li><a href="adminHome.jsp">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Students<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="viewStudents.jsp">View Students</a></li>
          <li><a href="addStudent.jsp">Add Student</a></li>
          <li><a href="removeStudent.jsp">Remove Student</a></li>
        </ul>
      </li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Teachers<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="viewTeachers.jsp">View Teachers</a></li>
          <li><a href="addTeacher.jsp">Add Teacher</a></li>
          <li><a href="removeTeacher.jsp">Remove Teacher</a></li>
        </ul>
      </li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="../index.jsp">Logout<span class="glyphicon glyphicon-log-in"></span></a></li>
    </ul>
	</nav>
  </div>

<div class= "login">
<h3>Change Password</h3>
<hr>
 <form action="changePasswordDAO.jsp" method="post">

  <div>
    <label for="psw"><b>New Password</b></label>
    <input type="text" placeholder="Enter New Password" name="psw" required>
        
    <button type="submit">Change</button>
  </div>
 </form>
</div>

</body>
</html>