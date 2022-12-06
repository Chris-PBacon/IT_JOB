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


  <!--로그인폼 css-->
    <link rel="stylesheet" href="/css/join.css">
  <!--버튼 css-->
    <link rel="stylesheet" href="/css/selectNE.css">

</head>

<body>
	<!-- 헤더 시작 -->
		<%@ include file="/WEB-INF/views/main/header.jsp" %>	  
	<!-- 헤더 끝 -->



<!-- page-header-start -->
<div class="contact-block">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"> </div>
    </div>
  </div>
</div>
<!-- page-header-close --> 


    <!-- start -->
  <div class="back color-10">
    <div class="row columns">
    
   

      <ul class="menu align-center expanded text-center SMN_effect-20" style="    width: 100%;
      display: flex;">
        <li><a href="logJoinNForm.do">일반회원</a></li>

        <li><a href="logJoinEForm.do">기업회원</a></li>
       
      </ul>
    </div>
  </div>
  <!-- // end -->

	<!-- footer 시작 -->
		<%@ include file="/WEB-INF/views/main/footer.jsp" %>	  
	<!-- footer 끝 -->
	


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="/js/jquery.min.js" type="text/javascript"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="/js/bootstrap.min.js" type="text/javascript"></script> 
<script src="/js/menumaker.js" type="text/javascript"></script> 
<script type="text/javascript" src="/js/jquery.sticky.js"></script> 
<script type="text/javascript" src="/js/sticky-header.js"></script> 

<!--로그인폼 js-->
<script type="text/javascript" src="/js/join.js"></script> 
 
</body>
</html>
