
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
 
<%@page import="java.util.Date"%>
<%@page import="com.five.member.entity.EmployVO"%>
<%@page import="java.util.List"%>   
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


	<!-- 헤더 시작 -->
		<%@ include file="/WEB-INF/views/main/header.jsp" %>	  
	<!-- 헤더 끝 -->

 
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
<script type="text/javascript" src="/js/employ.js"></script>

</body>
</html>