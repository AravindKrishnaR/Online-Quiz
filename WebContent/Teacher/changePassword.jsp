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
      <li class="active"><a href="teacherHome.jsp">Home</a></li>
      <li><a href="addQuestion.jsp">Add Questions</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Quiz<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="getQuizID.jsp">View Quiz</a></li>
          <li><a href="deleteQuiz.jsp">Delete Quiz</a></li>
        </ul>
      </li>
      <li><a href="viewMarksgetID.jsp">View Marks</a></li>
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