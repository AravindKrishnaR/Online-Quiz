<%@page import="com.AdminDAO"%>
<%
String id=request.getParameter("id");

String result=AdminDAO.removeTeacher(id);

if(result.equals("true")){
	response.sendRedirect("viewTeachers.jsp");
}
else{
	response.sendRedirect("removeTeacher.jsp");
}
%>