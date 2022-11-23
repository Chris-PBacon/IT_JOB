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
<title>내 강의페이지</title>
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

    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<style>
  .second_div{
    display: flex;
    border: 1px solid;
    height: 40px;
  }
  .third_div{
    border-right: 1px solid;
    width: 80px;
  }

  .btn_baek{
    margin: 5px;
    background-color: aliceblue;
  }
  .btn-active{
    color: white !important;
    background-color: orange;
  }

  h5{
    margin: 10px;
    display: flex;
    justify-content: center;
  }
  #searchBox{
    display: flex;
    justify-content: center;
  }
  .c_img{
    width: 345px;
    height: 300px;
  }
  .c_lec{
    padding: 20px;
  }
  .active{
    opacity: 0.20;
  }
  .hidden{
    visibility: hidden;
  }
  .hidden:hover{
    visibility: visible;
  }
  .hover-content{
    position: absolute;
  }
  .service-block{
    position: relative;
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

                              <li><a href="lecture.do" title="">강의</a></li>


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


 
<!-- cources-start-->
<div class="space-medium">
  <div class="container">
    
    <div class="row"> 
      <div style="padding-bottom: 50px;">
        <h1><strong>내 강의</strong></h1>
      </div>
      <!-- cources-start-->
      <c:choose>
      	<c:when test="${empty list }">
      		<hr>
      		<h2>수강중인 강의가 없습니다.</h2>
      		<hr>
      	</c:when>
      	<c:otherwise>
	      <c:forEach items="${list }" var="myLecture" varStatus="i">
		      <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
		        <div class="service-block c_lec">
		         <div class="c_img">
		            	<a href="myLecDetail.do?l_seq=${myLecture.l_seq }" class="title"><img src="${myLecture.l_img }" alt=""></a>
		         </div>
		         <div class="service-content">
		            	<h3><a href="myLecDetail.do?l_seq=${myLecture.l_seq }" class="title">${myLecture.l_title }</a></h3>
		            	<p>${myLecture.l_teacher }</p>
		         </div>
		      
		        </div> 
		       
		      </div>
	      </c:forEach>
	   	</c:otherwise>
     
      
      </c:choose>
       <!-- cources-close--> 
    
  </div>
</div>
 <!-- cources-close--> 


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

<!-- 강의 분류 클릭시 버튼 활성화 -->
<script type="text/javascript">

var currentMenu;
var menuLinks = document.querySelectorAll('.btn_baek');

function clickMenuHandler(){
     
    this.classList.add('btn-active');
    currentMenu = this;
}


for (var i = 0; i < menuLinks.length; i++){  
    menuLinks[i].addEventListener('click', clickMenuHandler);        
}

</script>

<!-- 버튼 초기화 -->

<script type="text/javascript">
  function reset_click(){
    $('.btn').removeClass("btn-active");
    
  }
  
</script>
 
</body>
</html>
