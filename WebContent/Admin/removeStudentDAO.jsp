<%@page import="com.AdminDAO"%>
<%
String id=request.getParameter("id");

String result=AdminDAO.removeStudent(id);

if(result.equals("true")){
	response.sendRedirect("viewStudents.jsp");
}
else{
	response.sendRedirect("removeStudent.jsp");
}
%>