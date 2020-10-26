<%@page import="com.TeacherDAO"%>
<%
String uname=(String)session.getAttribute("sessname"); 
String password=request.getParameter("psw");

String result=TeacherDAO.changePassword(uname, password);

if(result.equals("true")){
	response.sendRedirect("teacherHome.jsp");
}
else{
	response.sendRedirect("changePassword.jsp");
}
%>