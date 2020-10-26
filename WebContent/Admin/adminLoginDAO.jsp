<%@page import="com.AdminDAO"%>
<%
String username=request.getParameter("uname");
String password=request.getParameter("psw");

String result=AdminDAO.login(username, password);

if(result.equals("true")){
	session.setAttribute("sessname",username);
	response.sendRedirect("adminHome.jsp");
}
else{
	response.sendRedirect("adminLogin.jsp");
}
%>