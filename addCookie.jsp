<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

		<%
		long time = System.currentTimeMillis(); 
		String id =request.getParameter("id");
		System.out.println(id);
		
		SimpleDateFormat dayTime = new SimpleDateFormat("hh:mm:ss");

		String str_time = dayTime.format(new Date(time));
		System.out.println(str_time);
		Cookie cookie = new Cookie(str_time,id );
		cookie.setMaxAge(99999999);		
		cookie.setPath("/");
		response.addCookie(cookie);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("content.jsp");
		dispatcher.forward(request, response);
	
		%>

</body>
</html>