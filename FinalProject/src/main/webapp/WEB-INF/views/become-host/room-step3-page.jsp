<%@page import="com.spring.common.MyUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
   String ctxPath = request.getContextPath(); 
%>

<script type="text/javascript" src="<%=ctxPath%>/resources/js/jquery-3.3.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d69349d952e3fb841042681c3ba35f75&libraries=services"></script>

<style type="text/css">
	   .title{ font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto, "Helvetica Neue", sans-serif;
          overflow-wrap: break-word;
          font-size: 24px;
          font-weight: 800;
          line-height: 1.25em; 
          color: rgb(72, 72, 72);
          padding-top: 2px;
          padding-bottom: 20px;
          margin: 0px}  
          
     #text{font-size: 18px; 
     		padding-bottom: 10px;} 
     		
      .error1{background-color: #FFEAEA;}
   	  .error1_text{margin-top: 5px;
   				color:#d93900;
   				font-weight: bold;}
   	  .error1_1_text{margin-top: 5px;
   				color:#d93900;
   				font-weight: bold;}
   				
      .error2{background-color: #FFEAEA;}
   	  .error2_text{margin-top: 5px;
   				color:#d93900;
   				font-weight: bold;}
   	  .error2_1_text{margin-top: 5px;
   				color:#d93900;
   				font-weight: bold;}   				
   				
      .error3{background-color: #FFEAEA;}
   	  .error3_text{margin-top: 5px;
   				color:#d93900;
   				font-weight: bold;}
   	  .error3_1_text{margin-top: 5px;
   				color:#d93900;
   				font-weight: bold;}
   				   				
      .error4{background-color: #FFEAEA;}
   	  .error4_text{margin-top: 5px;
   				color:#d93900;
   				font-weight: bold;}  
   	  .error4_1_text{margin-top: 5px;
   				color:#d93900;
   				font-weight: bold;}  
   				
      .error5{background-color: #FFEAEA;}
   	  .error5_text{margin-top: 5px;
   				color:#d93900;
   				font-weight: bold;}  
   	  .error5_1_text{margin-top: 5px;
   				color:#d93900;
   				font-weight: bold;}    				 				 				   				   				
</style>

 

<script type="text/javascript">

   $(document).ready(function(){
	
	   $("#second").hide();
	   $("#third").hide();
	   
	   //유효성검사
	   $("#roomPrice").removeClass("error1");
	   $(".error1_text").hide();
	   $(".error1_1_text").hide();
	   $("#peakper").removeClass("error2");
	   $(".error2_text").hide();
	   $(".error2_1_text").hide();
	   $("#person_addpay").removeClass("error3");
	   $(".error3_text").hide();
	   $(".error3_1_text").hide();
	   $("#cleanPay").removeClass("error4");
	   $(".error4_text").hide();
	   $(".error4_1_text").hide();
	   $("#roomTel").removeClass("error5");
	   $(".error5_text").hide();
	   $(".error5_1_text").hide();
	   
	   //두번째 페이지 스크립트 시작 --------------------
   		$("#roomPrice").change(function(){
   		 	$("#roomPrice").removeClass("error1");
  	   		$(".error1_text").hide();
  	   		$(".error1_1_text").hide();
   		});
   
   		$("#peakper").change(function(){
   		   $("#peakper").removeClass("error2");
   		   $(".error2_text").hide();
   		   $(".error2_1_text").hide();
   		});
   		
   		$("#person_addpay").change(function(){
   		   $("#person_addpay").removeClass("error3");
   		   $(".error3_text").hide();
   		   $(".error3_1_text").hide();
   		});
   		
   		$("#cleanPay").change(function(){
   		   $("#cleanPay").removeClass("error4");
   		   $(".error4_text").hide();
   		   $(".error4_1_text").hide();
   		});
	   //두번째 페이지 스크립트 끝 --------------------
	   
	   //세번째 페이지 스크립트 시작 --------------------
   		$("#roomTel").click(function(){
   		 	$("#roomTel").removeClass("error5");
  	   		$(".error5_text").hide();
  	   		$(".error5_1_text").hide();
   		});
	   //세번째 페이지 스크립트 끝 --------------------
	   
   });// $(document).ready(function()

   // 버튼 함수들
   // first ---------------------------------------------------------
   function back1(){
	    var frm = document.roomtitle;
		frm.action = "roomstep3.air";
		frm.method = "GET";
		frm.submit();
	}
   
   function next1(){
	   $("#first").hide();
	   $("#second").show();
	}
   
	// second ---------------------------------------------------------
	function back2(){
	   $("#first").show();
	   $("#second").hide();
	}
	
	function next2(){
		
		var regExp = /^[0-9]+$/; // 숫자만 입력 정규포현식

		var roomPrice = $("#roomPrice").val();
		if(roomPrice == ""){
			$("#roomPrice").addClass("error1");
			$(".error1_text").show();
			return;
		}
		if(!regExp.test(roomPrice)){
			$("#roomPrice").addClass("error1");
  	   		$(".error1_1_text").show();
  	   		return;
		}
		
		var peakper = $("#peakper").val();
		if(peakper == ""){
			$("#peakper").addClass("error2");
			$(".error2_text").show();
			return;
		}
		if(!regExp.test(peakper)){
			$("#peakper").addClass("error2");
  	   		$(".error2_1_text").show();
  	   		return;
		}
		
		var person_addpay = $("#person_addpay").val();
		if(person_addpay == ""){
			$("#person_addpay").addClass("error3");
			$(".error3_text").show();
			return;
		}
		if(!regExp.test(person_addpay)){
			$("#person_addpay").addClass("error3");
  	   		$(".error3_1_text").show();
  	   		return;
		}
		
		var cleanPay = $("#cleanPay").val();
		if(cleanPay == ""){
			$("#cleanPay").addClass("error4");
			$(".error4_text").show();
			return;
		}
		if(!regExp.test(cleanPay)){
			$("#cleanPay").addClass("error4");
  	   		$(".error4_1_text").show();
  	   		return;
		}
		
		$("#second").hide();
		$("#third").show();
	}
	
	// third ---------------------------------------------------------
	function back3(){
	   $("#second").show();
	   $("#third").hide();
	}
	
	function next3(){	
		
		var regExp = /^\d{2,3}\d{3,4}\d{4}$/; // 연락처 정규표현식

		var roomTel = $("#roomTel").val();
		if(roomTel == ""){
			$("#roomTel").addClass("error5");
			$(".error5_text").show();
			return;
		}
		if(!regExp.test(roomTel)){
			$("#roomTel").addClass("error5");
  	   		$(".error5_1_text").show();
  	   		return;
		}
		
		var frm = document.roomtitle; 
		frm.action="roomlaststep.air";
		frm.method="GET";
		frm.submit();
	}

</script>

<div class="row">
	<div class="col-md-1">
		<img onclick="javascript:location.href='index.air'" src="<%=request.getContextPath() %>/resources/images/airLogo.png" style="padding-right:0; width: 30px; height: 30px; margin-top: 20px; margin-left: 40px;">
	</div>
	<div class="col-md-6" style="font-size: 18px; margin-top: 20px; padding-left: 0">3단계: 게스트를 맞이할 준비를 하세요</div>
</div>
<hr/>

<form name="roomtitle">
<div>
   <div class="row" style="border: 0px solid green;">
   
   <!-- 진행상태바 -->
<!--    <div class="container col-md-12" style="border: 0px solid red;">
	  <div class="progress" style="height: 13px;"> 
	    <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="5" aria-valuemin="0" aria-valuemax="100" style="width:5%; background-color: #148487;">
	    </div>
	  </div>
   </div> -->
    
    <!-- 입력창 반복되는 div 시작 -->
    <div class="col-md-3" style="margin-left: 27%; margin-top: 3%; border: 0px solid red;">
    
    	<!-- 첫번째 입력창 시작-->
        <div class="row" id="first" >
         	<div class="col-md-12 title">체크인시간 체크아웃시간 정하기</div>
            <div class="col-md-11" id="text" style="margin-bottom: 50px;"> 체크인 가능 시간을 선택해 주세요.</div>
 
         	<div class="col-md-5" style="font-size: 17px; color: #747474; padding-bottom: 10px"> 체크인시간: </div>
         	<div class="col-md-6" style="font-size: 17px; color: #747474; padding-bottom: 10px"> 체크아웃시간: </div>
         	<div class="col-md-5">
         		<select name="checkInTime" style="width: 100%; padding: 13px; border-radius: 3px;"> 
					<option value="NOT_SELECTED" disabled="">시간 선택</option>
					<option value="08">08:00</option>
					<option value="09">09:00</option>
					<option value="10">10:00</option>
					<option value="11">11:00</option>
					<option value="12">12:00</option>
					<option value="13">13:00</option>
					<option value="14">14:00</option>
					<option value="15">15:00</option>
					<option value="16">16:00</option>
					<option value="17">17:00</option>
					<option value="18">18:00</option>
					<option value="19">19:00</option>
					<option value="20">20:00</option>
					<option value="21">21:00</option>
					<option value="22">22:00</option>
					<option value="23">23:00</option>
					<option value="24">00:00</option>
					<option value="25">01:00(다음 날)</option>
				</select>
         	</div>
         	
         	<div class="col-md-5">
         		<select name="checkOutTime" style="width: 100%; padding: 13px; border-radius: 3px;">  
					<option value="NOT_SELECTED" disabled="">시간 선택</option>
					<option value="09">09:00</option>
					<option value="10">10:00</option>
					<option value="11">11:00</option>
					<option value="12">12:00</option>
					<option value="13">13:00</option>
					<option value="14">14:00</option>
					<option value="15">15:00</option>
					<option value="16">16:00</option>
					<option value="17">17:00</option>
					<option value="18">18:00</option>
					<option value="19">19:00</option>
					<option value="20">20:00</option>
					<option value="21">21:00</option>
					<option value="22">22:00</option>
					<option value="23">23:00</option>
					<option value="24">00:00</option>
					<option value="25">01:00(다음 날)</option>
					<option value="26">02:00(다음 날)</option>
				</select>
         	</div>
         
	        <div class="col-md-4" style="background-color: white; position: fixed; bottom: 0; padding-bottom:10px; padding-top: 20px; padding-left: 0; padding-right: 130px" >
	          <hr/>
		        <div class="col-md-3" style="padding: 0;">
		           <button type="button" onclick="back1();" style="width: 80px; height: 48px; background-color: #148487; border: none; border-radius: 3px; color: white; font-weight: bold; font-size: 1.2em">이전</button>
		        </div>
		        <div class="col-md-6" style="border: 0px solid red;"></div>
		        <div class="col-md-3" style="border: 0px solid red; padding-right: 0;">
		           <button type="button" onclick="next1();" style="width: 80px; height: 48px; background-color: #148487; border: none; border-radius: 3px; color: white; font-weight: bold; font-size: 1.2em; float: right;">다음</button>		          
		        </div>
	        </div>
          
        </div>
    	<!-- 첫번째 입력창 끝-->
    	
    	<!-- 두번째 입력창 시작 -->
    	<div class="row" id="second">
         	<div class="col-md-8 title" style="margin-bottom: 30px;">숙소 요금 설정하기</div>
         	
            <div class="col-md-8" style="font-size: 17px; font-weight:bold; padding-bottom: 10px;"> 기본요금 </div>
            <div class="col-md-8" style="margin-bottom: 30px;"> 
            	<textarea id="roomPrice" class="error1" name="roomPrice" cols="45" rows="1" style="padding: 10px; border-radius: 4px; font-size: 18px; resize: none; outline: 0 solid transparent;" placeholder="￦ 123456 "></textarea>
            	<div class="error1_text">요금을 설정하세요.</div>
            	<div class="error1_1_text">숫자만 입력하세요.</div>
            </div>
            
            <div class="col-md-8" style="font-size: 17px; font-weight:bold; padding-bottom: 10px;"> 성수기요금 </div>
            <div class="col-md-8" style="margin-bottom: 30px;"> 
            	<textarea id="peakper" class="error2" name="peakper" cols="45" rows="1" style="padding: 10px; border-radius: 4px; font-size: 18px; resize: none; outline: 0 solid transparent;" placeholder="￦ 123456 "></textarea>
            	<div class="error2_text">요금을 설정하세요.</div>
            	<div class="error2_1_text">숫자만 입력하세요.</div>
            </div>
            
            <div class="col-md-8" style="font-size: 17px; font-weight:bold; padding-bottom: 10px;"> 인원추가 비용 </div>
            <div class="col-md-8" style="margin-bottom: 30px;"> 
            	<textarea id="person_addpay" class="error3" name="person_addpay" cols="45" rows="1" style="padding: 10px; border-radius: 4px; font-size: 18px; resize: none; outline: 0 solid transparent;" placeholder="￦ 123456 "></textarea>
            	<div class="error3_text">요금을 설정하세요.</div>
            	<div class="error3_1_text">숫자만 입력하세요.</div>
            </div>
            
            <div class="col-md-8" style="font-size: 17px; font-weight:bold; padding-bottom: 10px;"> 청소비용 </div>
            <div class="col-md-8" style="margin-bottom: 30px;"> 
            	<textarea id="cleanPay" class="error4" name="cleanPay" cols="45" rows="1" style="padding: 10px; border-radius: 4px; font-size: 18px; resize: none; outline: 0 solid transparent;" placeholder="￦ 123456 "></textarea>
            	<div class="error4_text">요금을 설정하세요.</div>
            	<div class="error4_1_text">숫자만 입력하세요.</div>
            </div>
            
            
	        <div class="col-md-4" style="background-color: white; position: fixed; bottom: 0; padding-bottom:10px; padding-top: 20px; padding-left: 0; padding-right: 130px" >
	         	<hr/>
		        <div class="col-md-3" style="padding: 0;">
		           <button type="button" onclick="back2();" style="width: 80px; height: 48px; background-color: #148487; border: none; border-radius: 3px; color: white; font-weight: bold; font-size: 1.2em">이전</button>
		        </div>
		        <div class="col-md-6" style="border: 0px solid red;"></div>
		        <div class="col-md-3" style="border: 0px solid red; padding-right: 0;">
		           <button type="button" onclick="next2();" style="width: 80px; height: 48px; background-color: #148487; border: none; border-radius: 3px; color: white; font-weight: bold; font-size: 1.2em; float: right;">다음</button>		          
		        </div>
	        </div> 
        </div> 
        <!-- 두번째 입력창 끝 -->
      
        <!-- 세번째 입력창 시작-->
      	<div class="row" id="third">
         	<div class="col-md-12 title">숙소 전화번호</div>
            <div class="col-md-11" id="text" style="margin-bottom: 50px;"> 숙소의 연락망을 알려주세요</div>
         	
            <div class="col-md-8" style="font-size: 17px; color: #747474; padding-bottom: 10px"> 연락처 </div>
            <div class="col-md-8" style="margin-bottom: 30px;"> 
            	<textarea class="error5" id="roomTel" name="roomTel" cols="45" rows="1" style="padding: 10px; border-radius: 4px; font-size: 18px; resize: none; outline: 0 solid transparent;" placeholder="숫자만 입력해주세요"></textarea>
            	<div class="error5_text">요금을 설정하세요.</div>
            	<div class="error5_1_text">전화번호 형식에 맞게 입력하세요.</div>
            </div>

            
	        <div class="col-md-4" style="background-color: white; position: fixed; bottom: 0; padding-bottom:10px; padding-top: 20px; padding-left: 0; padding-right: 130px" >
	         	<hr/>
		        <div class="col-md-3" style="padding: 0;">
		           <button type="button" onclick="back3();" style="width: 80px; height: 48px; background-color: #148487; border: none; border-radius: 3px; color: white; font-weight: bold; font-size: 1.2em">이전</button>
		        </div>
		        <div class="col-md-6" style="border: 0px solid red;"></div>
		        <div class="col-md-3" style="border: 0px solid red; padding-right: 0;">
		           <button type="button" onclick="next3();" style="width: 80px; height: 48px; background-color: #148487; border: none; border-radius: 3px; color: white; font-weight: bold; font-size: 1.2em; float: right;">다음</button>		          
		        </div>
	        </div> 
        </div> 
   	    <!-- 세번째 입력창 끝-->

    </div> <!-- 입력창 반복되는 div 끝 -->
      

       <div class="col-md-4" style="border: 0px solid blue;">
      	  <img src="<%=request.getContextPath() %>/resources/images/boimg/roomenrollment.PNG" />
       </div>

   </div>
</div>
</form>
