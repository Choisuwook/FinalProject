<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>

<script type="text/javascript">

$(document).ready(function() {
	//	여기 링크를 꼭 참고하세용 http://www.iamport.kr/getstarted
   var IMP = window.IMP;     // 생략가능
   IMP.init('imp27256308');  // 중요!!  아임포트에 가입시 부여받은 "가맹점 식별코드". 
	
   // 결제요청하기
   IMP.request_pay({
       pg : 'html5_inicis', // 결제방식 PG사 구분
       pay_method : 'card',	// 결제 수단
       merchant_uid : 'merchant_' + new Date().getTime(), // 가맹점에서 생성/관리하는 고유 주문번호
       name : '${roomname1}',	 
       amount : 100,	  // '${coinmoney}' 결제 금액 number 타입. 필수항목. 원래는${coinmoney} 이 들어가야하지만, 100원으로 그냥 한다
       buyer_email : '${reEmail}',  // 구매자 email
       buyer_name : '${reName}',	  // 구매자 이름 
       buyer_tel : '${rePhone}',    // 구매자 전화번호 (필수항목)
       buyer_addr : '',  
       buyer_postcode : '',
       m_redirect_url : '' // 휴대폰 사용시 결제 완료 후 action : 컨트롤러로 보내서 자체 db에 입력시킬것!
       //db에서 update함
       //m_redirect_url은 휴대폰용일때만 쓴다.
       
   }, function(rsp) {
       /*
		   if ( rsp.success ) {
			   var msg = '결제가 완료되었습니다.';
			   msg += '고유ID : ' + rsp.imp_uid;
			   msg += '상점 거래ID : ' + rsp.merchant_uid;
			   msg += '결제 금액 : ' + rsp.paid_amount;
			   msg += '카드 승인번호 : ' + rsp.apply_num;
		   } else {
			   var msg = '결제에 실패하였습니다.';
			   msg += '에러내용 : ' + rsp.error_msg;
		   }
		   alert(msg);
	   */

		if ( rsp.success ) { // PC 데스크탑용
		/* === 팝업창에서 부모창 함수 호출 방법 3가지 ===
		    1-1. 일반적인 방법
			opener.location.href = "javascript:부모창스크립트 함수명();";
			opener.location.href = "http://www.aaa.com";
			
			1-2. 일반적인 방법
			window.opener.부모창스크립트 함수명();

			2. jQuery를 이용한 방법
			$(opener.location).attr("href", "javascript:부모창스크립트 함수명();");
		*/
		//	opener.location.href = "javascript:goCoinUpdate('${idx}','${coinmoney}');";
			/* window.opener.goCoinUpdate('${idx}','${coinmoney}'); 보통은 이렇게 한다*/
			//window.opener.goCoinUpdate('');
			//login.jsp로 보내서 창을 띄운다.
			
		//  $(opener.location).attr("href", "javascript:goCoinUpdate('${idx}','${coinmoney}');");
			
			location.href="<%=request.getContextPath() %>/reservationFinalConfirm.air";
			alert("결제 성공!");
			
        } else {
            location.href="<%=request.getContextPath() %>/reservationCheck.air?roomcode=${oneRoom.roomcode}&guestCount=1&babyCount=0&rsv_checkInDate=${checkin}&rsv_checkOutDate=${checkout}";
            alert("결제에 실패하였습니다.");
       }

   }); // end of IMP.request_pay()----------------------------

}); // end of $(document).ready()-----------------------------

</script>
</head>	

<body>
</body>
</html>
