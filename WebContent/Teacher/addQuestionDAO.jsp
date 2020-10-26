<%@page import="com.TeacherDAO"%>
<%
String id=request.getParameter("id");
String question=request.getParameter("question");
String answer=request.getParameter("answer");

String result=TeacherDAO.addQuestion(id, question, answer);

if(result.equals("true")){
	response.sendRedirect("addQuestion.jsp");
}
else{
	response.sendRedirect("addQuestion.jsp");
}
%>