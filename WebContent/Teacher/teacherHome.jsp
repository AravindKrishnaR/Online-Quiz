<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "onlinequiz";
String userid = "root";
String password = "password";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

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
  
<div class="container">
<h3>Profile</h3>
<hr>
<table class= "table table-hover">
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String uname=(String)session.getAttribute("sessname"); 
String sql ="select * from TEACHER where username='" + uname + "'";
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
%>
	  <tbody>
	  	<tr class="warning">
	  	  <th>ID</th>
		  <td><%=resultSet.getString("idTeacher") %></td>
		</tr>
	  </tbody>
	  
	  <tbody>
	  	<tr class="active">
	  	  <th>Name</th>
		  <td><%=resultSet.getString("name") %></td>
		</tr>
	  </tbody>
	  
	  <tbody>
	  	<tr class="warning">
	  	  <th>Username</th>
		  <td><%=resultSet.getString("username") %></td>
		</tr>
	  </tbody>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>

<div class= "login">
 <form action="changePassword.jsp" method="post" style="border:#fff">

  <div>        
    <button type="submit">Change Password</button>
  </div>
 </form>
</div>

</body>
</html>
