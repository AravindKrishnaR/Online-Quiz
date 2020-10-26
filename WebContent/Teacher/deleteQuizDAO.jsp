<%@page import="com.TeacherDAO"%>
<%
String id=request.getParameter("id");

String result=TeacherDAO.deleteQuiz(id);

if(result.equals("true")){
	response.sendRedirect("teacherHome.jsp");
}
else{
	response.sendRedirect("deleteQuiz.jsp");
}
%>