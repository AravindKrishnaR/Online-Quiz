<%@page import="com.StudentDAO"%>
<%
String username=request.getParameter("uname");
String password=request.getParameter("psw");

String result=StudentDAO.login(username, password);

if(result.equals("true")){
	session.setAttribute("sessname",username);
	response.sendRedirect("studentHome.jsp");
}
else{
	response.sendRedirect("studentLogin.jsp");
}
%>