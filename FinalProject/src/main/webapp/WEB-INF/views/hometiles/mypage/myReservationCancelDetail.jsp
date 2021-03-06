<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% String ctxPath = request.getContextPath(); %>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<link href="https://a0.muscache.com/airbnb/static/packages/dls/common_o2.1_cereal-b820ae7d16d76b0900accdef6c28185e.css" media="all" rel="stylesheet" type="text/css" />
<link href="https://a0.muscache.com/airbnb/static/packages/common-c2d2e28a641516ec0a21bccaae33f2ea.css" media="all" rel="stylesheet" type="text/css" />
<link href="https://a0.muscache.com/airbnb/static/packages/address_widget-4f18ee66a37930ce1c93c8f33690c7b0.css" media="screen" rel="stylesheet" type="text/css" /><link href="https://a0.muscache.com/airbnb/static/packages/phonenumbers-7c1faf80765f8cab48b45693af597ea9.css" media="screen" rel="stylesheet" type="text/css" /><link href="https://a0.muscache.com/airbnb/static/business_travel/quick_enroll-9fe44fac8aa94516d93764b9b4e57633.css" media="screen" rel="stylesheet" type="text/css" /><link href="https://a0.muscache.com/airbnb/static/packages/edit_profile-57ea8223a84513da61b565fa5448d1c2.css" media="screen" rel="stylesheet" type="text/css" />
 <style data-aphrodite="data-aphrodite">._1k01n3v1{color:#008489 !important;font:inherit !important;font-family:Circular,-apple-system,BlinkMacSystemFont,Roboto,Helvetica Neue,sans-serif !important;text-decoration:none !important;-webkit-appearance:none !important;-moz-appearance:none !important;appearance:none !important;background:transparent !important;border:0px !important;cursor:pointer !important;margin:0px !important;padding:0px !important;-webkit-user-select:auto !important;-moz-user-select:auto !important;-ms-user-select:auto !important;user-select:auto !important;text-align:left !important;}._1k01n3v1:hover{text-decoration:underline !important;color:#008489 !important;}._1k01n3v1:focus{text-decoration:underline !important;}@supports(--custom: properties){._1k01n3v1{color:var(--color-text-link, #008489) !important;font-family:var(--font-font_family, Circular,-apple-system,BlinkMacSystemFont,Roboto,Helvetica Neue,sans-serif) !important;}._1k01n3v1:hover{color:var(--color-text-link-hover, #008489) !important;}._1k01n3v1:active{color:var(--color-text-link-active, #006C70) !important;}}._1k01n3v1:active{color:#006C70 !important;outline:0px !important;}</style>
<style type="text/css">
.box {
  border: 1px solid #dbdfdf;
  padding: 5px;
  box-shadow: 2px 4px #dbdfdf;
 
}
.cancel{
	font-size:9pt;
		color: red;
	}

.firstDIV{
	margin-top: 5%;
	margin-bottom: 5%; 
}
	
 
</style>
<script type="text/javascript" src="<%= ctxPath %>/jquery-ui-1.11.4.custom/jquery-ui.min.js"></script> 

<script type="text/javascript">
	
</script>


<div class="row firstDIV" style="border: 0px soild red;">
<!--  사이드바 -->
<div class="col-md-1"></div>
    <div class="col-md-2">
	      <div class="sidenav" align="center">
			  <ul class="sidenav-list">
			    <li>
			      <a href="https://www.airbnb.co.kr/users/edit/231754930" aria-selected="false" class="sidenav-item"><h4>프로필 수정</h4></a>
			    </li>
			    <li>
			      <a href="https://www.airbnb.co.kr/users/reviews/231754930" aria-selected="false" class="sidenav-item"><h4>후기</h4></a>
			    </li>
			    <li>
			      <a href="https://www.airbnb.co.kr/users/reviews/231754930" aria-selected="true" class="sidenav-item"><h4>예약 관리</h4></a>
			    </li>
			    <li>
			      <a href="https://www.airbnb.co.kr/users/reviews/231754930" aria-selected="false" class="sidenav-item"><h4>나의 쿠폰</h4></a>
			    </li>
			  </ul>
		 </div>	
	  </div>
<!--  사이드바끝 -->  

    <div class="col-md-6">  
   	<div class="box" style="margin-bottom: 6%">
		<h3>[ 예약이  <span class="cancel-highlight">취소</span> 되었습니다 ]</h3><p>고객님의 예약이 취소되었으며, 다른 조치는 취하지 않으셔도 됩니다.</p><p><a class="find-another" href="/ko-kr/?cid=-1">다른 숙소</a> 를 검색해 예약하실 수도 있음을 알려드립니다.</p>
	</div>	
	 <div id="dashboard-content">	
	     <div class="panel-body box" style="border-top: 1px solid #dbdfdf;">     			
			<div class="row">			
				<div style="margin-left: 2%;">
					<div class="property-info">
						<h3><a href="#">호텔 몬토레 에델호프 삿포로</a></h3>
						<p><span data-selenium="hotel-address-map">1-1 Nishi, Kita 2-jo, Chuo-Ku, 삿포로 일본 060-0002 - </span>
						<a href="#">숙소 위치 확인</a></p>
					</div>
				</div>
				<div  class="col-md-12">			
					<div class="col-md-3"><img src="//pix6.agoda.net/hotelImages/108/108308/108308_16120714230049506378.jpg?s=450x302" width="200px"></div>					
					<div class="col-md-8" style="padding-right: 5%; float: right;">
						<div  class="col-md-12" style="border-bottom: 1px solid #dbdfdf;">
							<div class="col-md-5" style="border: 0px solid gray; float:left; padding-left: 4%;"><h5>예약 번호</h5></div>
							<div class="col-md-7" style="border: 0px solid gray; float:left;">
								<div style="margin-bottom: 3%">218773244</div>
								<div style="margin-bottom: 2%">
									<span class="cancel"><img src="<%= request.getContextPath() %>/resources/images/delete.png" height="15pt" />&nbsp;예약 취소일: 2017년 6월 28일 수요일</span>
								</div>
							</div>
						</div> 
						<div class="col-md-12" style="border-bottom: 1px solid #dbdfdf; padding:1%; margin-top: 3%">
							<div class="col-md-12" style="float:left;">
								<div class="col-md-5" style="border: 0px solid red; float:left;"><h5>체크인</h5></div>
								<div class="col-md-7" style="float:left;">2017년 8월 1일 화요일</div>					
							</div>	 
							<div class="col-md-12">			
								<div class="col-md-5" style="float:left;"><h5>체크아웃</h5></div>
								<div class="col-md-7" data-selenium="check-out-content">2017년 8월 4일 금요일</div>
							</div>
						</div> 
						<div class="col-md-12" style="border-bottom: 1px solid #dbdfdf; padding:1%; margin-top: 3%"">
							<div class="col-md-5"  style="padding-left: 5%"><h5>연락처 정보</h5></div>
							<div class="col-md-7" style="padding-left:6%;">
								<div style="margin-bottom: 3%">예약자 메일</div>
								<div style="margin-bottom: 3%">예약자 폰번호</div>
							</div>
						</div>
						<div class="col-md-12" style="border-bottom: 1px solid #dbdfdf; padding: 3%;">
							<div class="col-md-5"  style="float:left;"><h5>투숙객 이름</h5></div>
							<div class="col-md-6 row">
								<div style="margin: 1%;">suwook choi</div>
							</div>
						</div>
						<div class="col-md-12" style="border-bottom: 1px solid #dbdfdf; padding: 3%;">
							<div class="col-md-5"  style="float:left;"><h5>예약 객실</h5></div>
							<div class="col-md-6 row">
								<div style="margin: 1%;">스탠다드 트윈 (금연) (1개)</div>
							</div>
						</div>
						<div class="col-md-12" style="padding: 3%;">
							<div class="col-md-5"  style="float:left;"><h5>총 예약 인원</h5></div>
							<div class="col-md-6 row" style="padding: 1%;">
								<div style="margin: 1%;">성인 2명</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	
	       </div>
       </div>

	    </div>	
	    <!--  취소 된 예약  -->
	   </div>
