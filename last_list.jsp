<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
			
			<div class="card-group">
			<c:forEach items="${list}" var="dto">
			  <div class="card">
			    <img class="card-img-top" src="IMG/${dto.imgFile}" alt="Card image cap">
			    <div class="card-body">
			      <h5 class="card-title">${dto.name}</h5>		      
			    </div>
			  </div>
			 </c:forEach>
			</div>
</body>
</html>