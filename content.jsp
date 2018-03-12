<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%

String id = request.getParameter("id");
long time = System.currentTimeMillis(); 
SimpleDateFormat dayTime = new SimpleDateFormat("hhmmss");
String str_time = dayTime.format(new Date(time));
System.out.println(id);
System.out.println(str_time);

Cookie cookie = new Cookie(str_time, id);
cookie.setMaxAge(60*60*24);
response.addCookie(cookie);




%>
<%@ page import="dto.Menu_dto"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="pricing.css">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>


  <div class="container">
  
  		<div class="card mb-3" style="margin:100px">
  			<div style="width:100%; height:250px; overflow:hidden">
    				<img class="card-img-top" src="IMG/${content.imgFile}" alt="Card image cap" style="width:100%; height:auto; margin-top: -100px;">
			</div>
		  
		  <div class="card-body">
		    <h5 class="card-title">${content.name}</h5>
		     <table class ="table table-sm">
            		<tr><th scope="row">종류</td><td>${content.type}</td></tr>
            		<tr><th scope="row">가격</td><td>${content.price}</td></tr>
            		<tr><th scope="row">위치</td><td>${content.location}</td></tr>
            		<tr><th scope="row">혼밥</td><td>${content.single}</td></tr>
            		<tr><th scope="row">배달</td><td>${content.delivery}</td></tr>
            		<tr><th scope="row">인원</td><td>${content.portion}</td></tr>
            		<tr><th scope="row">전화번호</td><td>${content.phone}</td></tr>
            		<tr><th scope="row">주소</td><td>${content.address}</td></tr>
            		<tr><th scope="row" colspan="2">  </td></tr>
            </table>
            <div id="map" style="width:auto; height:300px;"></div>
		    <p class="card-text"><small class="text-muted"></small></p>
		    
		
		    <button type="button" id="mybutton" class="btn btn-lg  btn-outline-primary" data-toggle="modal" data-target="#editing"> 수정 </button>
		    <button type="button" id="mybutton" class="btn btn-lg  btn-outline-primary" data-toggle="modal" onclick="location.href='delete.do?id=${content.id}'"> 삭제 </button>
		    
		 <div class="modal fade" id="editing" tabindex="-1" role="dialog" aria-labelledby="exampleModaLongTitle" aria-hidden="true" >
		  <div class="modal-dialog" role="document" style="margin-left:20%" >
		    <div class="modal-content" style="width:130%">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLongTitle">수정</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		       		<div class="row justify-content-md-center">
	
			 	<div class="col-md-8 ">
			        <form class="needs-validation" novalidate="" action= "modify.do?id=${content.id}" method="post"  enctype="multipart/form-data">
			        
			        		<div class="mb-3">
			              <label for="username">음식이름</label>
			              <div class="input-group">			               
			                 <span class="input-group-text">@</span>
			                <input type="text" class="form-control" id="username" name="name" placeholder="NAME" required="" value="${content.name}">   
			                <div class="invalid-feedback" style="width: 100%;">
			                  Your username is required.
			                </div>
			              </div>
			            </div>
			          
					 <div class="mb-3">
			            <label for="portion">음식종류</label>
			                <select class="custom-select d-block w-100" id="portion" name="type" value="${content.type}">
			                  <option >Choose...</option>
			                    <option value="한식" > 한식 </option>
		                        <option value="중식" > 중식 </option>
		                        <option value="일식" > 일식 </option>
		                        <option value="양식" > 양식 </option>
		                        <option value="분식" > 분식 </option>
		                        <option value="치킨" > 치킨 </option>
		                        <option value="패스트푸드" > 패스트푸드 </option>
			                </select>
			                <div class="invalid-feedback">
			                  Please provide a valid state.
			                </div>
			              </div>
			          
					
			            <div class="mb-3">
			              <label for="username">가격</label>
			              <div class="input-group">			               
			                 <span class="input-group-text">₩</span>
			                <input type="text" class="form-control" id="username" name="price" placeholder="PRICE" required="" value="${content.price}">   
			                <div class="invalid-feedback" style="width: 100%;">
			                  Your username is required.
			                </div>
			              </div>
			            </div>
			
			
						<div class="row">
						  <div class="col-md-6 mb-3">
						  	
						     <label for="country">장소</label>
						     <select class="custom-select d-block w-100" id="country" name="location" >
						       <option >Choose...</option>
						       <option value="한동" > 한동 </option>
						          <option value="양덕" > 양덕 </option>
						          <option value="육거리" > 육거리 </option>
						     </select>
						     <div class="invalid-feedback">
						       Please select a valid country.
						     </div>
						   </div>
						    <div class="col-md-6 mb-3"> 
						     <label for="portion">인원</label>
						     <select class="custom-select d-block w-100" id="portion" name="portion" >
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
						  </div>
	
			         <div class="row">
			              <div class="col-md-6 mb-3">		  		                       
			                <label for="portion">혼밥</label>
			                <select class="custom-select d-block w-100" id="portion" name="single" >
			                  <option >Choose...</option>
			                    <option value="0" > 불가능 </option>
		                        <option value="1" > 가능 </option>
			                </select>
			                <div class="invalid-feedback">
			                  Please provide a valid state.
			                </div>
			              </div>
			              
			             <div class="col-md-6 mb-3">		              
			                <label for="portion">배달</label>
			                <select class="custom-select d-block w-100" id="portion" name="delivery" >
			                  <option >Choose...</option>
			                    <option value="0" > 불가능 </option>
		                        <option value="1" > 가능 </option>
			                </select>
			                <div class="invalid-feedback">
			                  Please provide a valid state.
			                </div>
			              </div>
			             </div>
			             
			             <div class="mb-3">
			              <label for="username">주소</label>
			              <div class="input-group">			               
							<input type="text" class="form-control" id="sample6_postcode" placeholder="우편번호" name="postal">
							<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>

			             
			              </div>
			              	<input type="text" class="form-control" id="sample6_address" placeholder="주소" name="address" value="${content.address}">
							<input type="text" class="form-control" id="sample6_address2" placeholder="상세주소" name="detail">
			            </div>
			              
			            <div class="mb-3">
			              <label for="username">전화번호</label>
			              <div class="input-group">			               
			                 <span class="input-group-text">#</span>
			                <input type="text" class="form-control" id="username" name="phone" placeholder="PHONE" required="" value="${content.phone}">   
			                <div class="invalid-feedback" style="width: 100%;">
			                  Your username is required.
			                </div>
			              </div>
			            </div>
			            
			            <label for="username">이미지 파일</label><br>
						<div class="input-group mb-3">				
						  <div class="input-group-prepend">
						    <span class="input-group-text">Upload</span>
						  </div>
						  <div class="custom-file">
						    <input type="file" class="custom-file-input" id="inputGroupFile01" name="imgFile" value="${content.name}">
						    <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
						  </div>
						</div>
			             
			            <hr class="mb-4">			        
			            <button class="btn btn-primary btn-lg btn-block" type="submit">수정</button>
			          </form>
			        </div>
			       </div>
		      </div>
		    </div>
		  </div>
		</div>
		    
		  </div>
		</div>
			
		
		
	
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cb6b3694434f4987d611ac970e3451dc&libraries=services"></script>
			<script>
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				    mapOption = {
				        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
				        level: 3 // 지도의 확대 레벨
				    };  
				
				// 지도를 생성합니다    
				var map = new daum.maps.Map(mapContainer, mapOption); 
				
				// 주소-좌표 변환 객체를 생성합니다
				var geocoder = new daum.maps.services.Geocoder();
				
				// 주소로 좌표를 검색합니다
				geocoder.addressSearch('${content.address}', function(result, status) {
				
				    // 정상적으로 검색이 완료됐으면 
				     if (status === daum.maps.services.Status.OK) {
				
				        var coords = new daum.maps.LatLng(result[0].y, result[0].x);
				
				        // 결과값으로 받은 위치를 마커로 표시합니다
				        var marker = new daum.maps.Marker({
				            map: map,
				            position: coords
				        });
				
				        // 인포윈도우로 장소에 대한 설명을 표시합니다
				        var infowindow = new daum.maps.InfoWindow({
				            content: '<div style="width:150px;text-align:center;padding:6px 0;">${content.name}</div>'
				        });
				        infowindow.open(map, marker);
				
				        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
				        map.setCenter(coords);
				    } 
				});    
			</script>
			 <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
			<script>
	    function sample6_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var fullAddr = ''; // 최종 주소 변수
	                var extraAddr = ''; // 조합형 주소 변수
	
	                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    fullAddr = data.roadAddress;
	
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    fullAddr = data.jibunAddress;
	                }
	
	                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
	                if(data.userSelectedType === 'R'){
	                    //법정동명이 있을 경우 추가한다.
	                    if(data.bname !== ''){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있을 경우 추가한다.
	                    if(data.buildingName !== ''){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
	                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
	                document.getElementById('sample6_address').value = fullAddr;
	
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById('sample6_address2').focus();
	            }
	        }).open();
	    }
	</script>
  </div>

</body>
</html>