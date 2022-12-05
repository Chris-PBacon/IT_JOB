<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="Digital marketing courses website template that can help you boost your business courses website and its completely free.">
<meta name="keywords" content="seo,free website template,responsive website template,marketing,search engine optimization, web analytics ">
<title>장바구니 / 결제</title>
<!-- Bootstrap -->
<link href="/css/bootstrap.min.css" rel="stylesheet">
<!-- Style CSS -->
<link href="/css/style.css" rel="stylesheet">
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

<!-- FontAwesome CSS -->
<link rel="stylesheet" type="text/css" href="/css/fontello.css">
<link href="/css/font-awesome.min.css" rel="stylesheet">
 
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-{SDK-최신버전}.js"></script>
<style>
  .post-img{
    height: 200px;
    width: 200px;
    padding: 20px;
  }
  .page-section{
    padding: 0px;
  }
  .lec-index{
    padding: 10px;
  }
  .lec-price{
    float: right;
    padding-top: 30px;
  }
  .lec-img{
  	width:120px;
  	height:80px;
  }
  .lec-right{
  	float: right;
  }
</style>

</head>

<body>

 
          <!--헤드부분 시작-->
    <div class="header-wrapper">
      <div class="container">
          <div class="row" style="display: flex; align-items: center;">
              <div class="col-lg-2 col-sm-4 col-md-2 col-xs-12">

                  <!--로고 이미지 부분-->
                  <div class="logo" style="width: 180px;">
                      <a href="index.html"><img src="/images/logo.png" class="img-responsive" alt="" style="width: 180px; height: 60px;"></a>
                  </div>
              </div>
              <div class="col-lg-8 col-md-10 col-sm-8 col-xs-12">
                  <div class="navigation-wrapper">

                      <!--메뉴 시작-->
                      <div id="navigation">
                          <ul>
                              <li class="active"><a href="main.do" title="">Home</a></li>

                              <li class="has-sub"><a href="#" title="">직무소개</a>
                                  <ul>
                                      <li><a href="job.do" title="">개발자 로드맵</a></li>
                                      <li><a href="jobMBTI.do" title="">재미로 보는 MBTI </a></li>
                                  </ul>
                              </li>

                              <li class="has-sub"><a href="lecture.do" title="">강의</a>
                              		<ul>
                                      <li><a href="lecture.do" title="">전체 강의</a></li>
                                      <li><a href="myLecture.do" title="">내 강의 </a></li>
                                      <li><a href="enterBasket.do" title="">강의 장바구니 </a></li>
                                  </ul>
                              
                              </li>


                              <li class="has-sub"><a href="#" title="">채용</a>
                                  <ul>
                                      <li><a href="employ.do" title="">채용정보</a></li>
                                      <li><a href="#" title="">구직관리</a></li>
                                      <li><a href="resume.do" title="">이력서</a></li>
                                  </ul>
                              </li>

                              <li><a href="board.do" title="">IT 게시판</a></li>
                          </ul>

                      </div>
                      <!-- 메뉴 부분 끝-->
                  </div>
              </div>
              <div class="col-lg-2 hidden-md hidden-sm hidden-xs">
              <c:choose> 
              
                <c:when test="${not empty id}">
                <div style="                	
                    display: flex;
            width: 400px;
            align-items: center;              	
                " >
                <span style="margin-right: 30px;">${id} 님 환영합니다!</span>
                  <a href="logOutNE.do" class="btn btn-primary">로그아웃</a>            			
                </div>              			            			
               </c:when>             		
                <c:otherwise>
                  <a href="selectNE.do" class="btn btn-primary">로그인</a>
                </c:otherwise>             		
              </c:choose>                          	
              </div>
          </div>
      </div>
  </div>
  <!-- 헤드부분 끝!!! -->


<div class="space-medium">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
        <div class="row"> 
          
          <!-- 세부 강의 내용 start -->
          <div class="col-md-12">
            <div class="post-block">
              <div class="row">
                
                  
                  

                  <!-- 커리큘럼 소개 -->
                 <form method="post" name="form">
                  <div>
                    <h2>수강 바구니</h2>
                    <input type="checkbox" name='lectureAll' value="'selectAll" onclick='selectAll(this)'>  전체선택
                    <button class="btn btn-default lec-right" type='submit' value='delete' onclick="javascript: form.action='deleteBasket.do';">선택항목 삭제</button>
                    <c:forEach items="${list }" var="lecture" varStatus="i"> 
	                    <hr>
	                    <div class="lec-index">
	                      <input type="checkbox" name="lecture" value="${lecture.l_seq }">
	                      <img class="lec-img" alt="" src="${lecture.l_img }">
	                      <a href="lectureDetail.do?l_seq=${lecture.l_seq }"> ${lecture.l_title } </a>
	                      <h4 id="result" class="lec-price">${lecture.l_price } 원</h4>
	                    </div>
                    </c:forEach>
  					<input type="hidden" name="m_id" value="${id}">
                  </div>
				 </form>

                  
                  
                </div>
              </div>
            </div>
          </div>
          <!-- post-1-close --> 
          
        </div>
      
     
      
      <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"> 
        <!-- widget-search-start -->
        <div class=" widget">
         	
              <div>
                <h3><strong>구매자 정보</strong></h3>
                <hr>
                <h5>이름 : ${vo.m_name}</h5>
                <h5>이메일 : ${vo.m_email}</h5>
                <h5>휴대폰 번호 : +82 ${vo.m_phone}</h5>
              </div>
              
             </div>
        
        
        <!-- widget-search-close --> 

        <!-- 결제금액 + 버튼 위젯 -->


        <div class=" widget">
           <div>
            <h5>선택상품 금액 </h5>
            <c:set var = "total" value = "0" />
			<c:forEach var="result" items="${list}" varStatus="status">    
			<c:set var= "total" value="${total + result.l_price}"/>
			</c:forEach>
			<h5><strong>총 합계금액 : ${total} 원</strong></h5>
            <button class="btn btn-primary btn-lg" onclick="requestPay()" style="background-color: blue; color: white;" >결제하기</button>
            <!-- <button class="btn btn-primary btn-lg" type='submit' value='payment' onclick="javascript: form.action='payment.do';" style="background-color: blue; color: white;" >결제하기</button> -->
           </div>
        </div>
        </div>
        
        </div>
        </div>
      </div>
  



                  
<!-- post-close-- >

                  
<!-- footer start -->
<div class="footer">
  <div class="container">
    <div class="row"> 
      <!-- footer-useful links-start -->
      <div class=" col-lg-3 col-md-3 col-sm-3 col-xs-12">
        <div class="footer-widget">
          <h3 class="footer-title">Quick Links</h3>
          <ul>
            <li><a href="#">Home </a></li>
            <li><a href="#">About us </a></li>
            <li><a href="#">Practice Area </a></li>
            <li><a href="#">Cases </a></li>
            <li><a href="#">News </a></li>
            <li> <a href="#">Contacts</a></li>
          </ul>
        </div>
      </div>
      <!-- footer-useful links-close --> 
      <!-- footer-contactinfo-start -->
      <div class=" col-lg-4 col-md-4 col-sm-4 col-xs-12">
        <div class="footer-widget">
          <h3 class="footer-title">24 X 7 Support</h3>
          <div class="">
            <ul>
              <li> <i class="fa fa-map-marker"></i> 2000 Cambridge Ease template,72764 India</li>
              <li><i class="fa fa-phone"></i>800-123-4567</li>
              <li><i class="fa fa-envelope"></i>info@education.com</li>
            </ul>
          </div>
          <a href="#" class="btn btn-primary btn-sm">request a Course</a></div>
      </div>
      <!-- footer-contactinfo-close --> 
      <!-- footer-about-start -->
      <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12 ">
        <div class="footer-widget">
          <h3 class="footer-title">About Education</h3>
          <p>Velitconsectetur utleo velaoreet in bibendum felirbi iaculis iaculis dpibus ecenas one posuereorci ut euismod tristique. </p>
          <p>lorem ipsum dolr sit amet viedfum lacumdi postern lembneir siot lsedto sistompovelaoreet in bibendum egestacerat tempus magna nonrordueugloattis ultrices diam.</p>
        </div>
      </div>
      <!-- footer-about-close -->
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
        <div class="footer-line"></div>
      </div>
      <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
        <p>Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a>
        </p>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
        <div class="footer-social">
         <a href="#"><span><i class="fa fa-facebook"></i></span></a>
          <a href="#"><span><i class="fa fa-google-plus"></i></span> </a> 
          <a href="#"><span class="active"><i class="fa fa-twitter"></i> </span></a> 
          <a href="#"><span><i class="fa fa-instagram"></i></span> </a> 
          <a href="#"><span><i class=" fa fa-pinterest"></i> </span></a> 
          <a href="#"><span><i class="fa fa-linkedin"></i></span></a> </div>
      </div>
    </div>
  </div>
  <!-- footer-address-close --> 
</div>

<!-- footer close --> 

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="/js/jquery.min.js" type="text/javascript"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="/js/bootstrap.min.js" type="text/javascript"></script> 
<script src="/js/menumaker.js" type="text/javascript"></script> 
<script type="text/javascript" src="/js/jquery.sticky.js"></script> 
<script type="text/javascript" src="/js/sticky-header.js"></script> 
<!-- 체크박스 전체선택해주는 스크립트 -->
<script type="text/javascript"> 
  function selectAll(selectAll)  {
    const checkboxes 
        = document.getElementsByName('lecture');
    
    checkboxes.forEach((checkbox) => {
      checkbox.checked = selectAll.checked;
    })
} </script>
 <!-- 1000단위 ,(콤마) 찍어주는 JS -->
<script type="text/javascript">
	const numberWithCommas  = (x) => {
	   return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}

	document.querySelector('#result').innerText = ' ￦ ' + numberWithCommas(10000);


<!-- 결제기능 구현js  -->
<script type="text/javascript">
	var IMP = window.IMP; // 생략 가능
	IMP.init("imp38403786"); // 예: imp00000000
	
	
	 function requestPay() {
	      // IMP.request_pay(param, callback) 결제창 호출
	      IMP.request_pay({ // param
	          pg: "html5_inicis",
	          pay_method: "card",
	          merchant_uid: "ORD20180131-0000011",
	          name: "노르웨이 회전 의자",
	          amount: 64900,
	          buyer_email: "gildong@gmail.com",
	          buyer_name: "홍길동",
	          buyer_tel: "010-4242-4242",
	          buyer_addr: "서울특별시 강남구 신사동",
	          buyer_postcode: "01181"
	      }, function (rsp) { // callback
	          if (rsp.success) {
	              ...,
	              // 결제 성공 시 로직,
	              ...
	          } else {
	              ...,
	              // 결제 실패 시 로직,
	              ...
	          }
	      });
	    }


</script>

 
</body>
</html>