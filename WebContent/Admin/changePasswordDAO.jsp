<%@page import="com.AdminDAO"%>
<%
String uname=(String)session.getAttribute("sessname"); 
String password=request.getParameter("psw");

String result=AdminDAO.changePassword(uname, password);

if(result.equals("true")){
	response.sendRedirect("adminHome.jsp");
}
else{
	response.sendRedirect("changePassword.jsp");
}
%>