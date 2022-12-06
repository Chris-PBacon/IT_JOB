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
<title>내 강의 상세페이지</title>
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
  #myform fieldset{
    display: inline-block;
    direction: rtl;
    border:0;
	}
	#myform fieldset legend{
	    text-align: right;
	}
	#myform input[type=radio]{
	    display: none;
	}
	#myform label{
	    font-size: 3em;
	    color: transparent;
	    text-shadow: 0 0 0 #f0f0f0;
	}
	#myform label:hover{
	    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
	}
	#myform label:hover ~ label{
	    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
	}
	#myform input[type=radio]:checked ~ label{
	    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
	}
	#reviewContents {
	    width: 100%;
	    height: 150px;
	    padding: 10px;
	    box-sizing: border-box;
	    border: solid 1.5px #D3D3D3;
	    border-radius: 5px;
	    font-size: 16px;
	    resize: none;
	}
	.btn-right{
		height: 70px;
		
	}
	.comment{
		display:flex;
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

<!-- page-header-start -->
<div class="page-header">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="page-section">
          <div class="post-img" style="float: left;">
            <a href="#" class="imghover">
              <img src="${vo.l_img}"  alt="" class="img-responsive">
            </a>
          </div>
          <div class="post-content" style="float: left; padding-left: 40px; padding-top: 20px;">
            <h4 style="color: white;">${vo.l_type }</h4>
            <h2 style="color: white;">${vo.l_title }</h2>
            <h4 style="color: white;">
             <c:choose>
                <c:when test="${vo2.avg_star eq '5'}">★★★★★</c:when>
                <c:when test="${vo2.avg_star >= '4'}">★★★★☆</c:when>
                <c:when test="${vo2.avg_star >= '3'}">★★★☆☆</c:when>
                <c:when test="${vo2.avg_star >= '2'}">★★☆☆☆</c:when>
                <c:when test="${vo2.avg_star >= '1'}">★☆☆☆☆</c:when>
	         </c:choose>
             (${vo2.avg_star }) ${vo2.review_cnt }개의 수강평
             </h4>
            <h4 style="color: white;">🙍‍♂️ ${vo.l_teacher }</h4>
            <h4 style="color: white;"># ${vo.l_language } / ${vo.l_level } </h4>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- page-header-close -->
<div class="space-medium">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
        <div class="row"> 
          
          <!-- 세부 강의 내용 start -->
          <div class="col-md-12">
            <div class="post-block">
              <div class="row">
                <div class="">
                  
                  <!-- 강의 소개 -->
                  <div>
                    <h2>강의소개</h2>
                    <p>
                    ${vo.l_content }
                    </p>
                  </div>

                  <hr>

                  <!-- 커리큘럼 소개 -->
                  <div>
                    <h2>커리큘럼</h2>
                    <c:forEach items="${list}" var="index" varStatus="i">
	                    <div class="lec-index"><a href="lecturePlay.do?li_seq=${index.li_seq }"> ${index.li_order}강. ${index.li_content}</a></div>
                    </c:forEach>
                  </div>

                  <hr>

                  <div>
                    <h2>수강평</h2>
                    <h4>수강생분들이 직접 작성한 수강평입니다.</h4>
                    <hr>
                    

				 	<form class="mb-3" action="insertReview.do" id="myform" method="post">
						<fieldset>
							<span class="text-bold">별점을 선택해주세요</span>
							<input type="radio" name="lg_star" value="5" id="rate1"><label
								for="rate1">🌟</label>
							<input type="radio" name="lg_star" value="4" id="rate2"><label
								for="rate2">★</label>
							<input type="radio" name="lg_star" value="3" id="rate3"><label
								for="rate3">★</label>
							<input type="radio" name="lg_star" value="2" id="rate4"><label
								for="rate4">★</label>
							<input type="radio" name="lg_star" value="1" id="rate5"><label
								for="rate5">★</label>
							<input type="hidden" name="l_seq" value="${vo.l_seq }">
							<input type="hidden" name="m_id" value="${id}">
						</fieldset>
						<div class="comment">
							<div>
								<textarea style="resize:none;" rows="5" cols="85" name="lg_content" placeholder="로그인한 회원만 이용할 수 있습니다."></textarea>
                    		</div>
                    		<div>
                    			<button class="btn btn-default btn-right btn-sm">작성</button>
							</div>
						</div>
						<hr>
					</form>
                    
                    <c:forEach items="${rList}" var="review">
	                    <div>
	                      <h3>${review.lg_content }</h3>
	                      <h4>
	                      평점 : 
	                      <c:choose>
		                      <c:when test="${review.lg_star eq '5'}">★★★★★</c:when>
		                      <c:when test="${review.lg_star eq '4'}">★★★★☆</c:when>
		                      <c:when test="${review.lg_star eq '3'}">★★★☆☆</c:when>
		                      <c:when test="${review.lg_star eq '2'}">★★☆☆☆</c:when>
		                      <c:when test="${review.lg_star eq '1'}">★☆☆☆☆</c:when>
	                      </c:choose> 
	                      </h4>
	                      <h4>${review.m_id }</h4>
	                    </div>
	                    <hr>
	                </c:forEach>
                   
                  </div>
                  
                </div>
              </div>
            </div>
          </div>
          <!-- post-1-close --> 
          
        </div>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"> 
        
        <!-- widget-search-start -->
        <div class=" widget">
          <form>
            <div class="">
              <div>
                <h1><strong>수강중</strong></h1>
              </div>
              <div>
                <a href="lecturePlay.do?li_seq=1"><button class="btn btn-primary btn-lg" type="button" style="background-color: blue; color: white;" >강의듣기</button></a>
              </div>
             </div>
          </form>
        </div>
        <!-- widget-search-close --> 
      
        
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
 
</body>
</html>
