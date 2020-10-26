<%@page import="com.AdminDAO"%>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String username=request.getParameter("uname");
String password=request.getParameter("psw");

String result=AdminDAO.addTeacher(id, name, username, password);

if(result.equals("true")){
	response.sendRedirect("viewTeachers.jsp");
}
else{
	response.sendRedirect("addTeacher.jsp");
}
%>