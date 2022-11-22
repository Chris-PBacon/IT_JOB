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
<meta name="description"
	content="Digital marketing courses website template that can help you boost your business courses website and its completely free.">
<meta name="keywords"
	content="seo,free website template,responsive website template,marketing,search engine optimization, web analytics ">
<title>Digital Marketing Courses Website Template</title>
<!-- Bootstrap -->
<link href="/css/bootstrap.min.css" rel="stylesheet">
<!-- Style CSS -->
<link href="/css/style.css" rel="stylesheet">
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
	rel="stylesheet">

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
<link href="/css/board.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="./css/main.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<!-- Bootstrap cdn 설정 -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript">




function window::onload(){test()}

function test(){
	
	$.ajax({
		url: "restBoardInfo.do",
		method: "POST",
		dataType : "JSON",
		success : resultJSON,
		error : function(e) {
			console.log(e);
		}				
	});
}

	

	
	</script>


<style>
/*테이블명 부분*/
#row_table {
	justify-content: center;
	display: flex;
}

footer .inner {
	padding: 40px 0 60px 0;
}

footer .menu {
	display: flex;
	justify-content: center;
}

footer .menu li {
	position: relative;
}

footer .menu li::before {
	/*인라인 position 이 ab~ , fl~일경우 자동으로 block으로 되기때문에 안해도 된다*/
	content: "";
	width: 3px;
	height: 3px;
	background-color: #555;
	position: absolute;
	top: 0;
	bottom: 0;
	right: -1px;
	margin: auto;
}

footer .menu li:last-child::before {
	/* li태그들 중에 마지막 li에 before은 화면에 안보이게 하겠다*/
	display: none;
}

footer .menu li a {
	color: black;
	font-size: 12px;
	font-weight: 700;
	padding: 26px;
	display: block; /*사용자가 a요소를 늘려주기 위함*/
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

	<!-- page-header-start -->
	<div class="page-header">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="page-section">
						<h1 class="page-title" style="font-weight: 700;">IT 게시판</h1>
						<p class="page-text">공지사항 / 자유게시판 / Q&A</p>
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
				<li><a href="javascript:void(0)" style="font-size: 24px;" id="info">공지사항</a></li>
				<li><a href="javascript:void(0)" style="font-size: 24px;" id="free">자유게시판</a></li>
				<li><a href="javascript:void(0)" style="font-size: 24px;" id="qna">QnA</a></li>
				
			</ul>
		</div>
	</footer>



	<div class="row" id="row_table">
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="width: 80%;">
			<!-- <h3 class="mb20">Striped Rows</h3> -->
			<table class="table table-striped ">
				<!-- <caption>
          Optional table caption.
          </caption> -->

				<!--다른사람은 검색창-->
				<div class="input_keyword">
					<input type="text" name="input_keyword" id="input_keyword" value=""
						placeholder="다른 사람들은 어떤 이야기를 할까?" class="inpTypo"
						title="키워드, 기업명 입력">
					<button type="button" class="spr btn_search">
						<span class="material-symbols-outlined"> psychology_alt </span>
					</button>

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
					<tbody id="list">


		<script type="text/javascript">

		
		//### info 리스트 함수
        $("#info").on('click',function restBoardInfo (){
 			
 			$.ajax({
 				url: "restBoardInfo.do",
 				method: "POST",
 				dataType : "JSON",
 				success : resultJSON,
 				error : function(e) {
 					console.log(e);
 				}				
 			})	
 		}) ; ///restBoardInfo 함수 끝
		
		//### free 리스트 함수
        $("#free").on('click',function restBoardFree (){
 			
 			// 자바스크립트의 객체 표현 방식 JSON 중괄호로 표시 {}
 			$.ajax({
 				url: "restBoardFree.do",
 				method: "POST",
 				dataType : "JSON",
 				success : resultJSON,
 				error : function(e) {
 					console.log(e);
 				}				
 			})	
 		}) ; ///restBoardFree 함수 끝
		
		//### QnA 리스트 함수
        $("#qna").on('click',function restBoardQnA (){
 			
 			// 자바스크립트의 객체 표현 방식 JSON 중괄호로 표시 {}
 			$.ajax({
 				url: "restBoardQnA.do",
 				method: "POST",
 				dataType : "JSON",
 				success : resultJSON,
 				error : function(e) {
 					console.log(e);
 				}				
 			})	
 		}) ; ///restBoardQnA 함수 끝
 		
 		//### Json 게시글 데이터 가져오는 함수
 		function resultJSON(data){
 			console.log(data);			
 		var html = "<span></span>";			
 			for(var i=0; i<data.length; i++){				
 				html +="<tr>";
 				html +="<td>"+(i+1)+"</td>";
 				html +="<td>"+data[i].b_type +"</td>";
 				html +="<td>"+ data[i].b_title + "</td>";
 				html +="<td>"+ data[i].m_id + "</td>";
 				html +="<td>"+ data[i].b_date + "</td>";
 				html +="<td>"+ data[i].b_count + "</td>";
 				html +="</tr>";			
 			}			
 			html += "</table>";			
 			$("#list").html(html)         
 		}//게시판 리스트 받아오는 함수
		</script>




					</tbody>
			</table>
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
					<a href="#" class="btn btn-default btn-sm mb20">글쓰기</a>
				</div>
			</div>
			<hr>
			<div style="text-align: center;">
				<ul class="pagination">
					<!-- li태그의 클래스에 disabled를 넣으면 마우스를 위에 올렸을 때 클릭 금지 마크가 나오고 클릭도 되지 않는다.-->
					<!-- disabled의 의미는 앞의 페이지가 존재하지 않다는 뜻이다. -->

					<li class="disabled"><a href="#"> <span>«</span>
					</a></li>
					<!-- li태그의 클래스에 active를 넣으면 색이 반전되고 클릭도 되지 않는다. -->
					<!-- active의 의미는 현재 페이지의 의미이다. -->
					<li class="active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#"> <span>»</span>

					</a></li>
				</ul>
			</div>

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
							<li><a href="#">Contacts</a></li>
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
								<li><i class="fa fa-map-marker"></i> 2000 Cambridge Ease
									template,72764 India</li>
								<li><i class="fa fa-phone"></i>800-123-4567</li>
								<li><i class="fa fa-envelope"></i>info@education.com</li>
							</ul>
						</div>
						<a href="#" class="btn btn-primary btn-sm">request a Course</a>
					</div>
				</div>
				<!-- footer-contactinfo-close -->
				<!-- footer-about-start -->
				<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12 ">
					<div class="footer-widget">
						<h3 class="footer-title">About Education</h3>
						<p>Velitconsectetur utleo velaoreet in bibendum felirbi
							iaculis iaculis dpibus ecenas one posuereorci ut euismod
							tristique.</p>
						<p>lorem ipsum dolr sit amet viedfum lacumdi postern lembneir
							siot lsedto sistompovelaoreet in bibendum egestacerat tempus
							magna nonrordueugloattis ultrices diam.</p>
					</div>
				</div>
				<!-- footer-about-close -->
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
					<div class="footer-line"></div>
				</div>
				<div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
					<p>
						Shared by <i class="fa fa-love"></i><a
							href="https://bootstrapthemes.co">BootstrapThemes</a>
					</p>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="footer-social">
						<a href="#"><span><i class="fa fa-facebook"></i></span></a> <a
							href="#"><span><i class="fa fa-google-plus"></i></span> </a> <a
							href="#"><span class="active"><i class="fa fa-twitter"></i>
						</span></a> <a href="#"><span><i class="fa fa-instagram"></i></span> </a> <a
							href="#"><span><i class=" fa fa-pinterest"></i> </span></a> <a
							href="#"><span><i class="fa fa-linkedin"></i></span></a>
					</div>
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
