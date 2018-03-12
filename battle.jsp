<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


<title>오늘 머 먹지?</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link href="pricing.css" rel="stylesheet">
	<script src="dto.js" charset="utf-8"></script>

</head>
<body>

	 <script src="http://code.jquery.com/jquery-latest.js"></script>
	
	<script type="text/javascript">
    		var leng = "${list.size()}";
    		var dtos = new Array();
    		var num_match = leng;
    		var round =0;
    		var first=-1;
    		var second=0;
    		
    		
  	</script>
  	
  	<c:forEach items="${list}" var="dto">
		<script type="text/javascript">
			var dto = new Dto("${dto.id}","${dto.type}", "${dto.name}", "${dto.price}", "${dto.location}", "${dto.single}", "${dto.delivery}","${dto.portion}","${dto.phone}","${dto.address}","${dto.imgFile}");
  			dtos.push(dto);
  		</script>
	</c:forEach>
	

  		
  	
	<jsp:include page="header.jsp"></jsp:include>

    <div class="pricing-header px-3 py-3 pb-md-4 mx-auto text-center">
      <h1 class="display-4">Round 1</h1>
      
      <p class="lead">먹고 싶은 음식을 고르세요.</p>
    </div>

    <div class="container">
      <div class="card-deck mb-3 text-center">
        <div class="first card mb-4 box-shadow">
          <div class="card-header">
            <h4 class=" my-0 font-weight-normal">음식이름</h4>
          </div>
          <div class="card-body">  
          		
		    					    	<div style="width:100%; height:300px; overflow:hidden">
    									<img  src="..." alt="Card image cap" style="width:100%; height:auto; margin-top: -10px;">
								</div>
			 	
            <h1 class="card-title pricing-card-title">₩</h1>
            <form method="get">
            <button type="button" id=first_btn class="btn btn-lg btn-block btn-outline-primary" onclick="drop_out(second);next_round(first);">선택</button>
          	</form>
          </div>
        </div>
        <div id="vs"><h1 style="line-height:400px;">VS</h1></div>   
        <div class="second card mb-4 box-shadow">
          <div class="card-header">
            <h4 class="my-0 font-weight-normal">음식이름</h4>
          </div>
          <div class="card-body">
		          
		    			  			<div style="width:100%; height:300px; overflow:hidden">
    									<img  src="..." alt="Card image cap" style="width:100%; height:auto; margin-top: -10px;">
								</div>
				
            <h1 class="card-title pricing-card-title">₩ </h1>
 
            <form method="get">
            <button type="button" id=second_btn class="btn btn-lg btn-block btn-outline-primary" onclick="drop_out(first);next_round(second);">선택</button>
          	</form>
          </div>
        </div>
    </div>
         
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	 <script src="http://code.jquery.com/jquery-latest.js"></script>
	<script type="text/javascript">
			function next_round(target){
				round +=1;
				first +=1;
				second +=1;
				num_match -=1;

				
				if(dtos.length == Math.ceil(leng/2)){
					first =0;
					second =1;	
					leng = leng/2;
				}
			 	if(num_match <= 0){
					$(".display-4").text("Final Winner");
					if(target == 1){
						$(".first, .lead").hide();
						$(".second form").attr("action", "victory.go");
						
					}else{
						$(".second, .lead").hide();
						$(".first form").attr("action", "victory.go");	
						
					}
					$('#second_btn, #first_btn').text("자세히 보기");
					$("#vs").hide();
					victory();
				}else{
				
				$(".first img").attr("src", "IMG/".concat(dtos[first].imgFile));
				$(".second img").attr("src", "IMG/".concat(dtos[second].imgFile));
				$(".display-4").text("Round " + round);
				$(".first h4").text(dtos[first].name);
				$(".second h4").text(dtos[second].name);
				$(".first h1").text("₩"+dtos[first].price);
				$(".second h1").text("₩"+dtos[second].price);
				$(".first .type").text( "" + dtos[first].type);
				$(".second .type").text(""+ dtos[second].type);
				$(".first .location").text( "" + dtos[first].location);
				$(".second .location").text(""+ dtos[second].location);
				$(".first .single").text( dtos[first].single ? "혼밥 가능" : "혼밥 불가");
				$(".second .single").text(dtos[second].single ? "혼밥 가능" : "혼밥 불가");
				$(".first .delivery").text( dtos[first].delivery ? "배달 가능" : "배달 불가");
				$(".second .delivery").text(dtos[second].delivery ? "배달 가능" : "배달 불가");
				
				}
			}
			next_round();
			
			function drop_out(target){
				dtos.splice(target,1);
			}
			
			$('.first').click( function(e) {
				
				if(dtos.length != 1)	{
					$('.first, #vs ,.second').slideUp('slow').slideDown('slow');
				}
			});
			
			$('.second').click( function(e) {
				if(dtos.length != 1){
				$('.first, #vs ,.second').slideUp('slow').slideDown('slow');	
				}
			});
			
		    function victory(){   
		         $.ajax({
		            url:'./victory.do?id='.concat(String(dtos[0].id)),
		            type: "post"
		        })
	    		};

			

  	</script>
</body>
</html>