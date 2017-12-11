<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		pageContext.setAttribute("pageContext-name", "pageContext-value");
		request.setAttribute("request-name", "request-value");
		session.setAttribute("session-name", "session-value");
		application.setAttribute("application-name", "application-value");
		int i = 100/0;
		request.getRequestDispatcher("/myServlerJsp").forward(request, response);
		
	%>
	
	<a href="myServlerJsp">MyJsp To a.jsp</a>
</body>
</html>