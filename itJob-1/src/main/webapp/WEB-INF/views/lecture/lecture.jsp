<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="Digital marketing courses website template that can help you boost your business courses website and its completely free.">
<meta name="keywords" content="seo,free website template,responsive website template,marketing,search engine optimization, web analytics ">
<title>강의인트로</title>
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
  .col-md-4{
  	width:25%;
  }
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
    width: 270px;
    height: 250px;
  }
  .c_lec{
    padding: 20px;
  }
  .active{
    opacity: 0.20;
  }
  
  .all{
  margin-right: 15px;
  }
  
  /* .hidden{
    visibility: hidden;
  }
  .hidden:hover{
    visibility: visible;
  } */
  /* .hover-content{
    position: absolute;
  }*/
  .service-block{
    position: relative;
    width:270px;
  	height:470px;
  }
  .selected{
  	display: block;
  }
  .unselected{
  	display: none;
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

<!-- 강의 분류 시작 -->
<div class="container">
  <form action="filterLecture.do" method="post">

    <div class="second_div">
      <div class="third_div">
        <h5>분야</h5>
      </div>
      <div>
        <button class="btn btn-xs btn_baek" id="type-1" type="button" name="l_type" value="type-prog">프로그래밍</button>
        <button class="btn btn-xs btn_baek" id="type-2" type="button" name="l_type" value="type-sys">시스템</button>
        <button class="btn btn-xs btn_baek" id="type-3" type="button" name="l_type" value="type-web">WEB</button>
        <button class="btn btn-xs btn_baek" id="type-4" type="button" name="l_type" value="type-ai">인공지능</button>
        <button class="btn btn-xs btn_baek" id="type-5" type="button" name="l_type" value="type-data">데이터분석</button>
      </div>
      
    </div>

    <div class="second_div">
      <div class="third_div">
        <h5>난이도</h5>
      </div>
      <div>
        <button class="btn btn-xs btn_baek" id="level-1" type="button" name="l_level" value="level-baby">입문</button>
        <button class="btn btn-xs btn_baek" id="level-2" type="button" name="l_level" value="level-begin">초급</button>
        <button class="btn btn-xs btn_baek" id="level-3" type="button" name="l_level" value="level-inter">중급</button>
        <button class="btn btn-xs btn_baek" id="level-4" type="button" name="l_level" value="level-advan">고급</button>
      </div>
    </div>

    <div class="second_div">
      <div class="third_div">
        <h5>언어</h5>
      </div>
      <div>
        <button class="btn btn-xs btn_baek" id="lang-1" type="button" name="l_language" value="lang-clan">C</button>
        <button class="btn btn-xs btn_baek" id="lang-2" type="button" name="l_language" value="lang-c++">C++</button>
        <button class="btn btn-xs btn_baek" id="lang-3" type="button" name="l_language" value="lang-java">자바</button>
        <button class="btn btn-xs btn_baek" id="lang-4" type="button" name="l_language" value="lang-python">파이썬</button>
        <button class="btn btn-xs btn_baek" id="lang-5" type="button" name="l_language" value="lang-js">자바스크립트</button>
        <button class="btn btn-xs btn_baek" id="lang-6" type="button" name="l_language" value="lang-htmlcss">HTML/CSS</button>
        <button class="btn btn-xs btn_baek" id="lang-7" type="button" name="l_language" value="lang-sql">SQL</button>
      </div>
      
    </div>

    <div class="second_div">
      <div class="third_div">
        <h5>가격</h5>
      </div>
      <div>
        <button class="btn btn-xs btn_baek" id="price-1" type="button" value="price-f">무료</button>
        <button class="btn btn-xs btn_baek" id="price-2" type="button" value="price-p">유료</button>
      </div>
    </div>
    <div id="searchBox">
      <button class="btn btn-xs btn_baek" onclick="unselected();" type="button">분류시작</button>
      <!--<button class="btn btn-xs btn_baek" type="submit">적용</button>-->
      <button id="reset" class="btn btn-xs" type="button" onclick="reset_click();" style=" margin: 5px; margin-left:20px;
      background-color: aliceblue;">초기화</button>
    </div>
  </form>
</div>
<!-- <script type="text/javascript">
 $(".btn_baek").on('click', function(e){
	 if(e.target.id.includes('type')){
		 var l_type = e.target.value
		 $.ajax({
		        url : 'filterType.do',
		        type : 'get',
		        data : {"l_type" : l_type},
		        datatype : 'JSON',
		        success: loadLecture,
		        error: function (e){
		            console.log(e);
		        }
		 })
	 }else if(e.target.id.includes('level')){
		 
	 }else if(e.target.id.includes('lang')){
		 
	 }else if(e.target.id.includes('price')){
		 
	 }
 })
function loadLecture(data){
	 
	 var html = "<div class='row'>";
	 for(var i = 0; i<data.length; i++){
		 html+= "<div class='col-lg-4 col-md-4 col-sm-6 col-xs-12'>";
		 html+= "<div class='service-block c_lec'>";
		 html+= "<div class='c_img'>";
		 html+= "<img src='" + data[i].l_img + "' alt=''></div>";
		 html+= "</div></div>";
	 }
	 html+= "</div>";
	 
	 $(".lecturePart").html(html);
	 $(".lecturePart").css("display:none");
	 $(".lectureFilter").css("display:block");
}
 



</script>-->
<!-- 강의 분류 끝 -->
 
<!-- cources-start-->
<div class="space-medium">
  <div class="container">
    
    <div class="row lecturePart"> 
	<div class="row lectureFilter">
	</div>
      <!-- cources-start-->
      <c:forEach items="${list}" var="lecture" varStatus="i">
      	<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 selected
      	<c:choose>
      	<c:when test="${fn:contains(lecture.l_type,'WEB')}">type-web</c:when>
      	<c:when test="${fn:contains(lecture.l_type,'programing')}">type-prog</c:when>
      	<c:when test="${fn:contains(lecture.l_type,'인공지능')}">type-ai</c:when>
      	<c:when test="${fn:contains(lecture.l_type,'데이터분석')}">type-data</c:when>
      	<c:when test="${fn:contains(lecture.l_type,'시스템')}">type-sys</c:when>
      	<c:otherwise></c:otherwise>
      	</c:choose>
      	<c:choose>
      	<c:when test="${fn:contains(lecture.l_level,'입문')}">level-baby</c:when>
      	<c:when test="${fn:contains(lecture.l_level,'초급')}">level-begin</c:when>
      	<c:when test="${fn:contains(lecture.l_level,'중급')}">level-inter</c:when>
      	<c:when test="${fn:contains(lecture.l_level,'고급')}">level-advan</c:when>
      	</c:choose>
      	<c:choose>
      	<c:when test="${fn:contains(lecture.l_language,'C언어')}">lang-clan</c:when>
      	<c:when test="${fn:contains(lecture.l_language,'C++')}">lang-c++</c:when>
      	<c:when test="${fn:contains(lecture.l_language,'Java')}">lang-java</c:when>
      	<c:when test="${fn:contains(lecture.l_language,'Python')}">lang-python</c:when>
      	<c:when test="${fn:contains(lecture.l_language,'JavaScript')}">lang-js</c:when>
      	<c:when test="${fn:contains(lecture.l_language,'HTML/CSS')}">lang-htmlcss</c:when>
      	<c:when test="${fn:contains(lecture.l_language,'SQL')}">lang-sql</c:when>
      	</c:choose>
      	<c:choose>
      	<c:when test="${lecture.l_price gt 0}">price-p</c:when>
      	<c:when test="${lecture.l_price eq 0}">price-f</c:when>
      	</c:choose>
      	">
	        <div class="service-block c_lec">
	          <div class="c_img">
	            <img src="${lecture.l_img }" alt="">
	          </div>
	          <div class="service-content c_lec">
	            <h3><a href="lectureDetail.do?l_seq=${lecture.l_seq }" class="title">${lecture.l_title }</a></h3>
	            <h4>${lecture.l_teacher }</h4>
	            <!--<h4>
	            <c:choose>
                <c:when test="${lecture.avg_star eq '5'}">★★★★★</c:when>
                <c:when test="${lecture.avg_star >= '4'}">★★★★☆</c:when>
                <c:when test="${lecture.avg_star >= '3'}">★★★☆☆</c:when>
                <c:when test="${lecture.avg_star >= '2'}">★★☆☆☆</c:when>
                <c:when test="${lecture.avg_star >= '1'}">★☆☆☆☆</c:when>
	       	    </c:choose>
	       	    ${lecture.review_count }</h4>-->
	            <h5 id='result'><a href="" class="btn-link">￦ ${lecture.l_price }</a></h5></div>
	        </div>
	      </div>
      </c:forEach>
      <!-- cources-close--> 
      
    </div>
    
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
var lectureSection = document.querySelectorAll('.col-lg-4');

function clickMenuHandler(){
     
	currentMenu = this;
	if(this.classList.contains('btn-active')){
    	this.classList.remove('btn-active');
    	unfilterLecture(this.value);
    }else{
    	this.classList.add('btn-active');
    	console.log(this.value);
    	filterLecture(this.value);
    }
}

function filterLecture(v){
	console.log(v);
	for (var i = 0; i < lectureSection.length; i++){
	    if(lectureSection[i].classList.contains(v)){
	    	lectureSection[i].classList.add('selected');
		}
	}
	
}

function unfilterLecture(v){
	console.log(v);
	for (var i = 0; i < lectureSection.length; i++){  
	    if(lectureSection[i].classList.contains(v)){
	    	lectureSection[i].classList.remove('selected');
		}
	}
	
	
}

for (var i = 0; i < menuLinks.length; i++){  
    menuLinks[i].addEventListener('click', clickMenuHandler);        
}

function reset_click(){
    $('.btn').removeClass("btn-active");
    $('.col-lg-4').css("display","block")
    
  }
  
function unselected(){
	for (var i = 0; i < lectureSection.length; i++){  
	    lectureSection[i].classList.remove('selected');	    	
		}
	}

</script>

<!-- 버튼 초기화 -->


<!-- 1000단위 ,(콤마) 찍어주는 JS
<script type="text/javascript">
	const numberWithCommas  = (x) => {
	   return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}

	document.querySelector('#result').innerText = ' ￦ ' + numberWithCommas();
</script>-->

</body>
</html>
