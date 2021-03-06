<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/admin.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/admin.js"></script>
<style type="text/css">
	#sideinfo_menues > li > a{ line-height:7vh;}
	
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$("a.inherits").bind("click",function(){
			$(this).parent().parent().find("li").removeClass("active");
			$(this).parent().addClass("active");

		});
	});
</script>
<div class="container-fluid main-container">
	<div class="col-md-2 sidebar">
	<div class="row">
	<!-- uncomment code for absolute positioning tweek see top comment in css -->
	<div class="absolute-wrapper"> </div>
	<!-- Menu -->
	<div class="side-menu">
		<nav class="navbar navbar-default" role="navigation" style="margin-bottom:0;" >
			<!-- Main Menu -->
			<div class="side-menu-container">
				<ul id="sideinfo_menues" class="nav navbar-nav" >
					<li class="active"><a href="admin.air" class="inherits"> 관리자_메인</a></li>
					<li><a href="adminMember.air" class="inherits">회원관리</a></li>
					<li><a href="lodgingManage.air" class="inherits">숙소관리</a></li>
					<li><a href="lodgingRegistManage.air" class="inherits">숙소등록관리</a></li>
					<li><a href="#" class="inherits">1:1문의관리</a></li>
					<li><a href="board_report.air" class="inherits">게시판</a></li>
					<li><a href="couponRegs.air" class="inherits">쿠폰등록</a></li>
					<li><a href="https://center-pf.kakao.com/_qxnqxij/chats" class="inherits" target="_blank">1:1톡</a></li>
					<li><a href="#" class="inherits">통계</a></li>    
				</ul>
			</div><!-- /.navbar-collapse -->
		</nav> 
		</div>
	</div>  		
</div>  