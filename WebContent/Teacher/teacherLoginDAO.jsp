<%@page import="com.TeacherDAO"%>
<%
String username=request.getParameter("uname");
String password=request.getParameter("psw");

String result=TeacherDAO.login(username, password);

if(result.equals("true")){
	session.setAttribute("sessname",username);
	response.sendRedirect("teacherHome.jsp");
}
else{
	response.sendRedirect("teacherLogin.jsp");
}
%>