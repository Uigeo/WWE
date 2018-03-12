<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="index_style.css">
</head>
<body>
	<header>
    <h3><a href="index.html">메뉴 리스트</a></h3>
    <h1><a href="index.html">오늘 머 먹지?</a></h1>
  </header>

  <div id="grid">
    <div style="border-right: 1px solid gray; background-color: rgb(193, 193, 193); "></div>
      <div class="new_menu">
      
		     <table width="500" cellpadding="0" cellspacing="0" border="1">
				<form action="write.do" method="post" enctype="multipart/form-data">
					<tr>
						<td> 음식 이름 </td>
						<td> <input type="text" name="name" size = "50"> </td>
					</tr>
					<tr>
						<td> 종류 </td>
						<td> <input type= "radio" name="type" value = "한식"> 한식
							<input type= "radio" name="type" value = "중식"> 중식
							<input type= "radio" name="type" value = "일식"> 일식
							<input type= "radio" name="type" value = "양식"> 양식
							<input type= "radio" name="type" value = "분식"> 분식
							<input type= "radio" name="type" value = "패스트푸드"> 패스트푸드
						</td>
					</tr>
					<tr>
						<td> 가격 </td>
						<td> <input type="text" name="price" size = "50"></textarea> </td>
					</tr>
					<tr>
						<td> 위치 </td>
						<td> <input type= "radio" name="location" value = "한동"> 한동
							<input type= "radio" name="location" value = "양덕"> 양덕
							<input type= "radio" name="location" value = "육거리"> 육거리
						</td>
					</tr>
					<tr>
						<td> 혼밥 </td>
						<td> 
							<select name="single" >
                        			<option value="0" selected> 불가능 </option>
                        			<option value="1" > 가능 </option>
                      		</select>
						 </td>
					</tr>
					<tr>
						<td> 배달 </td>
						<td> 
							<select name="delivery" >
                        			<option value="0" selected> 불가능 </option>
                        			<option value="1" > 가능 </option>
                      		</select>
						 </td>
					</tr>
					<tr>
						<td> 인원 </td>
						<td> 
							<select name="portion" >
		                        <option value="1" selected> 1명 </option>
		                        <option value="2" > 2명 </option>
		                        <option value="3" > 3명 </option>
		                        <option value="4" > 4명 </option>
		                        <option value="5" > 5명 </option>
                      		</select>
						 </td>
					</tr>
					<tr>
						<td> 전화번호 </td>
						<td> <input type="text" name="phone" size = "50"></textarea> </td>
					</tr>
					<tr>
						<td> 주소 </td>
						<td> <input type="text" name="address" size = "50"></textarea> </td>
					</tr>
					<tr>
						<td> 이미지 </td>
						<td> <input type="file" name="file"> </td>
					</tr>
					
					
					<tr >
						<td colspan="2"> <input type="submit" value="입력"> &nbsp;&nbsp; <a href="list.do">목록보기</a></td>
					</tr>
				</form>
			</table>
      
        </div>
        <div style="border-left: 1px solid gray; background-color: rgb(193, 193, 193);"></div>
  </div>
  <footer></footer>
</body>
</html>