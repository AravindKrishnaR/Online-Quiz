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
Statement statement1 = null;
ResultSet resultSet = null;
ResultSet resultSet1 = null;
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
      <li><a href="teacherHome.jsp">Home</a></li>
      <li><a href="addQuestion.jsp">Add Questions</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Quiz<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="getQuizID.jsp">View Quiz</a></li>
          <li><a href="deleteQuiz.jsp">Delete Quiz</a></li>
        </ul>
      </li>
      <li class="active"><a href="viewMarksgetID.jsp">View Marks</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="../index.jsp">Logout<span class="glyphicon glyphicon-log-in"></span></a></li>
    </ul>
	</nav>
  </div>

<div class="container">
<h3>View Marks</h3>
<hr>
<table class= "table table-hover">
	<thead>
	<tr>
		<th>Name</th>
		<th>Marks</th>
	</tr>
  </thead>
<%
try{
String idQuiz=request.getParameter("id");
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from RESULT where quizID='"+ idQuiz + "'";
resultSet = statement.executeQuery(sql);
int count=0;
while(resultSet.next()){
	/*String username = (String)resultSet.getString("studName");
	statement1=connection.createStatement();
	String sql1 = "select * from STUDENT where username='"+ username + "'";
	resultSet1 = statement1.executeQuery(sql1);*/
	if(count%2==0){
%>
	  <tbody>
	  	<tr class="warning">
		  <td><%=resultSet.getString("studName") %></td>
		  <td><%=resultSet.getString("marks") %></td>
		</tr>
	  </tbody>
<%  }
	else{
%>
	  <tbody>
	  	<tr class="active">
		  <td><%=resultSet.getString("studName") %></td>
		  <td><%=resultSet.getString("marks") %></td>
		</tr>
	  </tbody>
<%
	}
	count++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
	<button onclick="location.href='teacherHome.jsp'">Go to Home page</button>
</div>

</body>
</html>