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
<link rel="stylesheet" href="/css/main.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>



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


	<!-- 헤더 시작 -->
		<%@ include file="/WEB-INF/views/main/header.jsp" %>	  
	<!-- 헤더 끝 -->




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
				<li><a href="javascript:void(0)" style="font-size: 24px;" id="all">All</a></li>
				
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
	
		///=====자동 검색 기능======
		//keydown ,keypress, keyup
			$('#input_keyword').on("keyup", function(){
				var search = $("#input_keyword").val();
				
				if(search.length>0){
					$.ajax({
						url : "searchList.do",
						type : "POST",
						data : {"search" : search},
						dataType : "JSON",
						success :resultJSON,
						error : function(e){
							console.log(e);
						}						
					});///ajax
					
				}//if
				else{
					$("#list").empty();
				}//else
			
			} );////
			
			
			//=====findAll 리스트 함수=====
	        $("#all").on('click',function findAll (){
	        	

	        	const queryString = new URLSearchParams(params).toString();
	            const replaceUri = location.pathname + '?' + queryString;
	            history.replaceState({}, '', replaceUri);
	        	
	        	
	 			
	 			$.ajax({
	 				url: "findAll.do",
	 				method: "POST",
	 				dataType : "JSON",
	 				success : resultJSON,
	 				error : function(e) {
	 					console.log(e);
	 				}				
	 			})	
	 		}) ; ///restBoardInfo 함수 끝

		
		//=====info 리스트 함수=====
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
		
		//=====free 리스트 함수=====
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
		
		//===== QnA 리스트 함수 =====
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
 		
 		
 		
 		//===== Json 게시글 데이터 가져오는 함수 =====
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
					<a href="boardWrite.do" class="btn btn-default btn-sm mb20">글쓰기</a>
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
	
	

</body>
</html>
