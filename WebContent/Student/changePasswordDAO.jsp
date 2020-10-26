<%@page import="com.StudentDAO"%>
<%
String uname=(String)session.getAttribute("sessname"); 
String password=request.getParameter("psw");

String result=StudentDAO.changePassword(uname, password);

if(result.equals("true")){
	response.sendRedirect("studentHome.jsp");
}
else{
	response.sendRedirect("changePassword.jsp");
}
%>