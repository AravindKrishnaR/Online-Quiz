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
<!DOCTYPE html>
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

<div class="container">
<h3>View Students</h3>
<hr>
<table class= "table table-hover">
  <thead>
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Username</th>
	</tr>
  </thead>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from STUDENT";
resultSet = statement.executeQuery(sql);
int count = 0;
while(resultSet.next()){
	if(count%2==0){
%>
	  <tbody>
	  	<tr class="warning">
		  <td><%=resultSet.getString("idStudent") %></td>
		  <td><%=resultSet.getString("name") %></td>
		  <td><%=resultSet.getString("username") %></td>
		</tr>
	  </tbody>
<%  }
	else{
%>
	  <tbody>
	  	<tr class="active">
		  <td><%=resultSet.getString("idStudent") %></td>
		  <td><%=resultSet.getString("name") %></td>
		  <td><%=resultSet.getString("username") %></td>
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
</div>
</body>
</html>