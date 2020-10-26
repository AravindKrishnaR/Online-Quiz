<%@page import="com.AdminDAO"%>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String username=request.getParameter("uname");
String password=request.getParameter("psw");

String result=AdminDAO.addStudent(id, name, username, password);

if(result.equals("true")){
	response.sendRedirect("viewStudents.jsp");
}
else{
	response.sendRedirect("addStudent.jsp");
}
%>