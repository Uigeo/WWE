<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link href="pricing.css" rel="stylesheet">
</head>
<body>
	<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
      <h5 class="my-0 mr-md-auto font-weight-normal"><a href="index.jsp">오늘 머 먹지?</a></h5>
      <nav class="my-2 my-md-0 mr-md-3">
     	<button type="button" class="btn btn-lg  btn-outline-primary" data-toggle="modal" data-target="#menuAdd">음식추가</button>
     	<button type="button" class="btn btn-lg  btn-outline-primary" id="menu_list" data-toggle="modal" data-target="#menuListing">리스트</button>
      </nav>
		 
	<!----------------------------- Modal(menu_add) --------------------------------> 
		 <div class="modal fade" id="menuAdd" tabindex="-1" role="dialog" aria-labelledby="exampleModaLongTitle" aria-hidden="true" >
		  <div class="modal-dialog" role="document" style="margin-left:20%" >
		    <div class="modal-content" style="width:130%">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLongTitle">음식추가</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		       		<div class="row justify-content-md-center">
	
			 	<div class="col-md-8 ">
			        <form class="needs-validation" novalidate="" action= "write.do" method="post"  enctype="multipart/form-data">
			        
			        		<div class="mb-3">
			              <label for="username">음식이름</label>
			              <div class="input-group">			               
			                 <span class="input-group-text">@</span>
			                <input type="text" class="form-control" id="username" name="name" placeholder="NAME" required="">   
			                <div class="invalid-feedback" style="width: 100%;">
			                  Your username is required.
			                </div>
			              </div>
			            </div>
			          
					 <div class="mb-3">
			            <label for="portion">음식종류</label>
			                <select class="custom-select d-block w-100" id="portion" name="type">
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
			                <input type="text" class="form-control" id="username" name="price" placeholder="PRICE" required="">   
			                <div class="invalid-feedback" style="width: 100%;">
			                  Your username is required.
			                </div>
			              </div>
			            </div>
			
			
						<div class="row">
						  <div class="col-md-6 mb-3">
						  	
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
						    <div class="col-md-6 mb-3"> 
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
						  </div>
	
			         <div class="row">
			              <div class="col-md-6 mb-3">		  		                       
			                <label for="portion">혼밥</label>
			                <select class="custom-select d-block w-100" id="portion" name="single">
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
			                <select class="custom-select d-block w-100" id="portion" name="delivery">
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
			              	<input type="text" class="form-control" id="sample6_address" placeholder="주소" name="address">
							<input type="text" class="form-control" id="sample6_address2" placeholder="상세주소" name="detail">
			            </div>
			              
			            <div class="mb-3">
			              <label for="username">전화번호</label>
			              <div class="input-group">			               
			                 <span class="input-group-text">#</span>
			                <input type="text" class="form-control" id="username" name="phone" placeholder="PHONE" required="">   
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
						    <input type="file" class="custom-file-input" id="inputGroupFile01" name="imgFile">
						    <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
						  </div>
						</div>
			             
			            <hr class="mb-4">			        
			            <button class="btn btn-primary btn-lg btn-block" type="submit">추가</button>
			          </form>
			        </div>
			       </div>
		      </div>
		    </div>
		  </div>
		</div>
    </div>
    <!----------------------------- Modal(listing) --------------------------------> 
    		 <div class="modal fade" id="menuListing" tabindex="-1" role="dialog" aria-labelledby="exampleModaLongTitle" aria-hidden="true">
		  <div class="modal-dialog" role="document" style="margin-left:25%">
		    <div class="modal-content" style="width:150%">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLongTitle">메뉴 리스트</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body" id="menu_body">
		       		
		      </div>

		    </div>
		  </div>
		</div>
   
	<!----------------------------- Modal --------------------------------> 
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script>
	    $('#menu_list').click(function(){   
		         $.ajax({
		            url:'./list.do',
		            type: "GET",
		            success:function(data){
		                $('#menu_body').html(data)
		            }
		        })
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
</body>
</html>