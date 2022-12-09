/**
 * 
 */

var IMP = window.IMP;   // 생략 가능
IMP.init("imp38403786");

function requestPay() {
      IMP.request_pay({ 
          pg: "kakaopay.TC0ONETIME",
          pay_method: "card",
          merchant_uid: "ORD20180131-0000012",   //주문번호
          name: "노르웨이 회전 의자",
          amount: 64900,                         // 숫자타입
          buyer_email: "gildong@gmail.com",
          buyer_name: "홍길동",
          buyer_tel: "010-4242-4242",
          buyer_addr: "서울특별시 강남구 신사동",
          buyer_postcode: "01181"
      }, function (rsp) {             // callback
      if (rsp.success) {            // 결제 성공 시: 결제 승인 또는 가상계좌 발급에 성공한 경우
        // jQuery로 HTTP 요청
        $.ajax({
            url: "payment.do", 
            method: "POST",
            headers: { "Content-Type": "application/json" },
            data: {
                m_id : rsp.imp_uid,            //결제 고유번호     
                l_seq : rsp.merchant_uid   //주문번호
            }
        }).done(function (data) {
          // 가맹점 서버 결제 API 성공시 로직
        })
      } else {
        alert("결제에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
      }
    })
    };
 
 function itemSum(num){
	 $(('.checkBox'+num)).addClass('l-checked');
	 var valueSet = document.querySelectorAll('.l-checked');
	 for (var i = 0; i < valueSet.length; i++){
		 console.log(valueSet[i].value);
	 }
	 
 }
 
 
 