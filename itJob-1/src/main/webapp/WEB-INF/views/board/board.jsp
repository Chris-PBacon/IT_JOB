<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
 
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


<!--alswjd-->  
<link href="../css/board.css" rel="stylesheet">

<style> 
/*테이블명 부분*/
#row_table{
  justify-content: center;
  display: flex;
}

footer .inner{
  padding: 40px 0 60px 0;
}
footer .menu{
  display: flex;
  justify-content: center;
}
footer .menu li{
  position: relative;
}
footer .menu li::before{  /*인라인 position 이 ab~ , fl~일경우 자동으로 block으로 되기때문에 안해도 된다*/
  content: "";
  width: 3px;
  height: 3px;
  background-color: #555;
  position: absolute ;
  top:0 ;
  bottom: 0;
  right: -1px;
  margin: auto;
}
footer .menu li:last-child::before{ /* li태그들 중에 마지막 li에 before은 화면에 안보이게 하겠다*/
  display: none;
}

footer .menu li a{
  color: black;
  font-size: 12px;
  font-weight: 700;
  padding: 26px;
  display: block;         /*사용자가 a요소를 늘려주기 위함*/
}
h1.mb30 {
  display: flex;
  justify-content: center;
}




</style>
</head>

<body>

   <!--헤드부분 시작-->
   <div class="header-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-2 col-sm-4 col-md-2 col-xs-12">

                <!--로고 이미지 부분-->
                <div class="logo">
                    <a href="index.html"><img src="/images/logo.png" class="img-responsive" alt=""></a>
                </div>
            </div>
            <div class="col-lg-8 col-md-10 col-sm-8 col-xs-12">
                <div class="navigation-wrapper">

                    <!--메뉴 시작-->
                    <div id="navigation">
                        <ul>
                            <li class="active"><a href="index.html" title="">Home</a></li>

                            <li class="has-sub"><a href="#" title="">직무소개</a>
                                <ul>
                                    <li><a href="courses.html" title="">개발자 로드맵</a></li>
                                    <li><a href="courses-single.html" title="">재미로 보는 MBTI </a></li>
                                </ul>
                            </li>

                            <li class="has-sub"><a href="#" title="">강의</a>
                                <ul>
                                    <li><a href="blog-default.html" title="">강의1</a></li>
                                    <li><a href="blog-single.html" title="">강의2</a></li>
                                </ul>
                            </li>

                            <li class="has-sub"><a href="#" title="">채용</a>
                                <ul>
                                    <li><a href="testimonials.html" title="">채용정보</a></li>
                                    <li><a href="404-error.html" title="">구직관리</a></li>
                                    <li><a href="styleguide.html" title="">이력서</a></li>
                                </ul>
                            </li>

                            <li><a href="contact.html" title="">IT 게시판</a> </li>
                        </ul>

                    </div>
                    <!-- 메뉴 부분 끝-->
                </div>
            </div>
            <div class="col-lg-2 hidden-md hidden-sm hidden-xs"> <a href="#" class="btn btn-primary">로그인</a> </div>
        </div>
    </div>
</div>
<!-- 헤드부분 끝 -->

<!-- page-header-start -->
<div class="page-header">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="page-section">
          <h1 class="page-title">IT 게시판</h1>
          <p class="page-text">마음편히 쓰세요~</p>
        </div>
      </div>
    </div>
  </div>
</div>
    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <!-- <h1 class="mb30">IT게시판</h1> -->
      </div>
    </div>
  <footer>
    <div class="inner">
      <ul class="menu">
        <li> <a href="javascript:void(0)">초보자  게시판</a></li>
        <li> <a href="javascript:void(0)">경력자 게시판</a></li>
        <li> <a href="javascript:void(0)">뉴스</a></li>
      </ul>
    </div>
  </footer>
    <div class="row" id="row_table">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <h3 class="mb20">Striped Rows</h3>
        <table class="table table-striped ">
          <caption>
          Optional table caption.
          </caption>
          <thead>
            <tr>
              <th>번호</th>
              <th>분류</th>
              <th>제목</th>
              <th>작성자</th>
              <th>작성일</th>
              <th>조회수</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row">1</th>
              <td>입사지원서 컨설팅</td>
              <td>제목이 들어갑니다</td>
              <td>작성자</td>
              <td>2022.08.11</td>
              <td>30</td>
            </tr>
            <tr>
              <th scope="row">2</th>
              <td>입사지원서 컨설팅</td>
              <td>제목이 들어갑니다</td>
              <td>작성자</td>
              <td>2022.08.11</td>
              <td>30</td>
            </tr>
            <tr>
              <th scope="row">3</th>
              <td>입사지원서 컨설팅</td>
              <td>제목이 들어갑니다</td>
              <td>작성자</td>
              <td>2022.08.11</td>
              <td>30</td>
            </tr>
            <tr>
              <th scope="row">4</th>
              <td>입사지원서 컨설팅</td>
              <td>제목이 들어갑니다</td>
              <td>작성자</td>
              <td>2022.08.11</td>
              <td>30</td>
            </tr>
            <tr>
              <th scope="row">5</th>
              <td>입사지원서 컨설팅</td>
              <td>제목이 들어갑니다</td>
              <td>작성자</td>
              <td>2022.08.11</td>
              <td>30</td>
            </tr>
          </tbody>
        </table>
        <div class="row">
          <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12"> <a href="#" class="btn btn-default btn-sm mb20">글쓰기</a></div>
        </div>
        <hr>
      </div>
    </div>
  </div>
</div>
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
