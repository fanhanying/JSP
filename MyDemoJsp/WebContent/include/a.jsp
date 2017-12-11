<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <!-- 浏览器显示编码要与此编码相同 -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	你好 a.jsp
	<br/><br/>
	<% 
		request.setAttribute("name", "name"); 
		String name = "name";
	%>
	<!-- 
		将b.jsp文件的内容在编译期间全部引入到a.jsp文件中，只生成一个.java文件 
		a.jsp文件中定义的变量在b.jsp文件中可以访问
	-->
	<%@ include file="b.jsp" %>
	<!-- 
		将c.jsp文件的相应在请求期间引入到a.jsp文件中，生成两个java文件
	 -->
	 <!-- 使用request.getParameter("")获取数据 -->
	<jsp:include page="c.jsp">
		<jsp:param value="c_name" name="c_name"/>
	</jsp:include>
	
	<!-- 
		与<request.getRequestDispatcher("").forward(request, response);一样
		请求转发，url拦还是a.jsp
	 -->
	<jsp:forward page="d.jsp">
		<jsp:param value="d_name" name="d_name"/>
	</jsp:forward>
</body>
</html>