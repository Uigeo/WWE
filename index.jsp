<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
 <%@page import="java.net.URLDecoder"%>

 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


<title>오늘 머 먹지?</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link href="pricing.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>


    <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
      <h1 class="display-4">머 먹지?</h1>
      <p class="lead">먹고 싶은 음식의 특성을 고르세요.</p>
    </div>

    <div class="container">
     
	   <div class="row justify-content-md-center">
	      <div class="col col-lg-2">
      			
   		 </div>
	 	<div class="col-md-8 ">
	          <form class="needs-validation" novalidate="" action= "battle.do" method="post">
	            <div class="row">
	              <div class="col-md-12 mb-3">
	                <label for="firstName">음식 종류</label><br>
	                		 <div class="form-check form-check-inline">
							 <input class="form-check-input" type="checkbox" id="inlineCheckbox1" name="type" value="한식">
							 <label class="form-check-label" for="inlineCheckbox1">한식 </label>
						</div>
						<div class="form-check form-check-inline">
							  <input class="form-check-input" type="checkbox" id="inlineCheckbox2" name="type" value="중식">
							  <label class="form-check-label" for="inlineCheckbox2">중식 </label>
						</div>
						<div class="form-check form-check-inline">
							  <input class="form-check-input" type="checkbox" id="inlineCheckbox3" name="type" value="일식">
							  <label class="form-check-label" for="inlineCheckbox3">일식 </label>
						</div>
						<div class="form-check form-check-inline">
							  <input class="form-check-input" type="checkbox" id="inlineCheckbox3" name="type" value="양식">
							  <label class="form-check-label" for="inlineCheckbox3">양식 </label>
						</div>
						<div class="form-check form-check-inline">
							  <input class="form-check-input" type="checkbox" id="inlineCheckbox3" name="type" value="분식">
							  <label class="form-check-label" for="inlineCheckbox3">분식 </label>
						</div>
						<div class="form-check form-check-inline">
							  <input class="form-check-input" type="checkbox" id="inlineCheckbox3" name="type" value="치킨">
							  <label class="form-check-label" for="inlineCheckbox3">치킨 </label>
						</div>
						<div class="form-check form-check-inline">
							  <input class="form-check-input" type="checkbox" id="inlineCheckbox3" name="type" value="패스트푸드">
							  <label class="form-check-label" for="inlineCheckbox3">패스트푸드 </label>
						</div>
	                <div class="invalid-feedback">
	                  Valid first name is required.
	                </div>
	              </div>
	   
	            </div>
	
	            <div class="mb-3">
	              <label for="username">가격</label>
	              <div class="input-group">
	               
	                  <span class="input-group-text">₩</span>
	                <input type="text" class="form-control" id="username" name="min" placeholder="MIN" required="">   
	                <span class="input-group-text">₩</span>
	                <input type="text" class="form-control" id="username" name="max" placeholder="MAX" required="">
	                <div class="invalid-feedback" style="width: 100%;">
	                  Your username is required.
	                </div>
	              </div>
	            </div>
	
	
	            
	              <div class="mb-3">
	                <label for="country">장소</label>
	                <select class="custom-select d-block w-100" id="country" name="location">
	                  <option >Choose...</option>
	                  <option value="한동" > 한동 </option>
                      <option value="양덕" > 양덕 </option>
                      <option value="육거리" > 육거리 </option>
	                </select>
	                <div class="invalid-feedback">
	                  Please select a valid country.
	                </div>
	              </div>
	              <div class="mb-3">
	                <label for="portion">인원</label>
	                <select class="custom-select d-block w-100" id="portion" name="portion">
	                  <option >Choose...</option>
	                    <option value="1" > 1명 </option>
                        <option value="2" > 2명 </option>
                        <option value="3" > 3명 </option>
                        <option value="4" > 4명 </option>
                        <option value="5" > 5명 </option>
	                </select>
	                <div class="invalid-feedback">
	                  Please provide a valid state.
	                </div>
	              </div>
	
	           
	            <hr class="mb-4">
	
	
	            
	          
	            <button class="btn btn-primary btn-lg btn-block" type="submit">시작</button>
	          </form>
	        </div>
	        	 <div class="col col-lg-2">  </div>
	       </div>

		<jsp:include page="footer.jsp"></jsp:include>
      
    </div>	
  	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>


  </body>
</html>