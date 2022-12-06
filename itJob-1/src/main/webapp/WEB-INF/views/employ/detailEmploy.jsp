<%@page import="java.util.Date"%>
<%@page import="com.five.member.entity.EmployVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>Digital Marketing Courses Website Template</title>
<!-- Bootstrap -->
<link href="/css/bootstrap.min.css" rel="stylesheet">
<!-- Style CSS -->
<link href="/css/style.css" rel="stylesheet">
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

<!-- FontAwesome CSS -->
<link rel="stylesheet" type="text/css" href="/css/fontello.css">
<link href="/css/font-awesome.min.css" rel="stylesheet">
 
<!-- 아이콘 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<style>
  .section-title{
    margin: 1%;
  }
  .space-medium{
    margin-top: 3%;
    padding-top: 1%;
    padding-bottom: 1%;
    border-bottom-style: inset;
    border-bottom-width: 3px; 
    margin-bottom: 3%;
    border-top-style: inset;
    border-left-style: inset;
    border-right-style: inset;
  }
  .apply-button{
    height: 100%;
    display:flex;
    justify-content: center;
  }
  .fw-bold{
    font-size:150%;
  }
  #blue>h4{
    color: blue;
  }
  .container{
    margin-top: 1%;
  }

</style>

</head>

<body>

<% List<EmployVO> list = (List<EmployVO>)request.getAttribute("list"); %>

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
 
<!-- 메인시작 -->
<div class="space">
    <div class="container">
        <div class="row">

            <div class="space-medium">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-md-12 col-sm-12 col-lg-12">
                            <div class="section-title">
                                <div>
                                    ${list[0].j_title}
                                    <button type="button" class="btn btn-light btn-lg">관심기업 등록 <i class="bi bi-bookmark-heart"></i></button>
                                    <button type="button" class="btn btn-danger btn-lg">지원자 수 32</button>
                                </div>
                                <br>
                                <p class="fw-bold">${list[0].j_content}</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12 col-sm-12 col-lg-12">
                            <div class="apply-button">
                                <button type="button" class="btn btn-danger btn-lg"> D-${Ddays}</button>
                                <button type="button" class="btn btn-light btn-lg"> 지원하기 </button>
                            </div>
                        </div> 
                    </div>
                    <hr>
                    <div class="row">
                        <div class="container">
                            <div class="col-lg-2 col-md-12 col-sm-12 col-lg-12">
                                <h4>경력</h4>
                                <h4>학력</h4>
                                <h4>근무형태</h4>
                            </div>
                            <div class="col-lg-2 col-md-12 col-sm-12 col-lg-12" id="blue">
                                <h4>${list[0].j_exp}직</h4>
                                <h4>학력무관</h4>
                                <h4>정규직</h4>
                            </div>
                            <div class="col-lg-2 col-md-12 col-sm-12 col-lg-12">
                            </div>
                            <div class="col-lg-2 col-md-12 col-sm-12 col-lg-12">
                                <h4>급여</h4>
                                <h4>근무지역</h4>
                                <h4>기타</h4>
                            </div>
                            <div class="col-lg-2 col-md-12 col-sm-12 col-lg-12" id="blue">
                                <h4>면접 후 결정</h4>
                                <h4>${list[0].j_place}</h4>
                                <h4>${list[0].j_language}</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="space-medium">
            	<c:choose> 
			    	<c:when test="${not empty list}">
			        	<% for (int i =0; i<list.size(); i++){ %>
			        		<div class="container">
			                    <img src="<%=list.get(i).getJd_img()%>" alt="">
			                </div>
			        	<%} %>   		           			            			
			        </c:when>
			        
		          	<c:otherwise>
			              <h3>해당하는 공고가 없습니다</h3>
			        </c:otherwise>
			    </c:choose>
            </div>

        </div>    
    </div>
</div>
<!-- 메인 끝 -->

<!-- footer start -->
<div class="footer">
  <div class="container">
    <div class="row"> 
      <!-- footer-useful links-start -->
      <div class=" col-lg-3 col-md-3 col-sm-3 col-xs-12">
        <div class="footer-widget">
          <h3 class="footer-title">IT_그_JOB_채</h3>
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
          <h3 class="footer-title">Spring B반 기업연계프로젝트</h3>
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
          <h3 class="footer-title"></h3>
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
<script type="text/javascript" src="/js/employ.js"></script>

</body>
</html>