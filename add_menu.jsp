<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
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
	        	 <div class="col col-lg-2">
      			
   			 </div>
	       </div>
	
</body>
</html>