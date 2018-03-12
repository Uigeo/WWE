<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>List</title>
</head>
<body>
	<%! int index = 0; %>

	<table class="table table-hover">
		<thead>
		<tr>
			<th scope="col">#</th>
			<th scope="col" id=order_type>종류</th>
			<th scope="col" id=order_name>이름</th>
			<th scope="col" id=order_price>가격</th>		
			<th scope="col">혼밥</th>
			<th scope="col">배달</th>
			<th scope="col" id=order_victory>우승</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="dto">
		<tr>
			<% index++; %>
			<th scope="row"><%= index %></th>
			<td>${dto.type}</td>
			<td><a href="content.do?id=${dto.id}">${dto.name}</a></td>
			<td>${dto.price}₩</td>
			<td>${dto.single}</td>
			<td>${dto.delivery}</td>
			<td>${dto.victory}</td>
		</tr>
		</c:forEach>
		<tbody/>
	</table>
	<% index = 0; %>
	
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
		<script>
		    $('#order_type').click(function(){   
			         $.ajax({
			            url:'./list.do?order=type',
			            type: "GET",
			            success:function(data){
			                $('#menu_body').html(data)
			            }
			        })
		    });
		    $('#order_name').click(function(){   
		         $.ajax({
		            url:'./list.do?order=name',
		            type: "GET",
		            success:function(data){
		                $('#menu_body').html(data)
		            }
		        })
	    		});
		    $('#order_price').click(function(){   
		         $.ajax({
		            url:'./list.do?order=price',
		            type: "GET",
		            success:function(data){
		                $('#menu_body').html(data)
		            }
		        })
	   		 });
		    $('#order_victory').click(function(){   
		         $.ajax({
		            url:'./list.do?order=victory',
		            type: "GET",
		            success:function(data){
		                $('#menu_body').html(data)
		            }
		        })
	    		});
		 </script>
</body>
</html>