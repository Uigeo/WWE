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
    <h3><a href="index.html">�޴� ����Ʈ</a></h3>
    <h1><a href="index.html">���� �� ����?</a></h1>
  </header>

  <div id="grid">
    <div style="border-right: 1px solid gray; background-color: rgb(193, 193, 193); "></div>
      <div class="new_menu">
      
		     <table width="500" cellpadding="0" cellspacing="0" border="1">
				<form action="write.do" method="post" enctype="multipart/form-data">
					<tr>
						<td> ���� �̸� </td>
						<td> <input type="text" name="name" size = "50"> </td>
					</tr>
					<tr>
						<td> ���� </td>
						<td> <input type= "radio" name="type" value = "�ѽ�"> �ѽ�
							<input type= "radio" name="type" value = "�߽�"> �߽�
							<input type= "radio" name="type" value = "�Ͻ�"> �Ͻ�
							<input type= "radio" name="type" value = "���"> ���
							<input type= "radio" name="type" value = "�н�"> �н�
							<input type= "radio" name="type" value = "�н�ƮǪ��"> �н�ƮǪ��
						</td>
					</tr>
					<tr>
						<td> ���� </td>
						<td> <input type="text" name="price" size = "50"></textarea> </td>
					</tr>
					<tr>
						<td> ��ġ </td>
						<td> <input type= "radio" name="location" value = "�ѵ�"> �ѵ�
							<input type= "radio" name="location" value = "���"> ���
							<input type= "radio" name="location" value = "���Ÿ�"> ���Ÿ�
						</td>
					</tr>
					<tr>
						<td> ȥ�� </td>
						<td> 
							<select name="single" >
                        			<option value="0" selected> �Ұ��� </option>
                        			<option value="1" > ���� </option>
                      		</select>
						 </td>
					</tr>
					<tr>
						<td> ��� </td>
						<td> 
							<select name="delivery" >
                        			<option value="0" selected> �Ұ��� </option>
                        			<option value="1" > ���� </option>
                      		</select>
						 </td>
					</tr>
					<tr>
						<td> �ο� </td>
						<td> 
							<select name="portion" >
		                        <option value="1" selected> 1�� </option>
		                        <option value="2" > 2�� </option>
		                        <option value="3" > 3�� </option>
		                        <option value="4" > 4�� </option>
		                        <option value="5" > 5�� </option>
                      		</select>
						 </td>
					</tr>
					<tr>
						<td> ��ȭ��ȣ </td>
						<td> <input type="text" name="phone" size = "50"></textarea> </td>
					</tr>
					<tr>
						<td> �ּ� </td>
						<td> <input type="text" name="address" size = "50"></textarea> </td>
					</tr>
					<tr>
						<td> �̹��� </td>
						<td> <input type="file" name="file"> </td>
					</tr>
					
					
					<tr >
						<td colspan="2"> <input type="submit" value="�Է�"> &nbsp;&nbsp; <a href="list.do">��Ϻ���</a></td>
					</tr>
				</form>
			</table>
      
        </div>
        <div style="border-left: 1px solid gray; background-color: rgb(193, 193, 193);"></div>
  </div>
  <footer></footer>
</body>
</html>