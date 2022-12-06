<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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



<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

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
	
	/*게시판 타입 클릭*/
	.clicked{
	    
	    text-shadow: 5px 6px 12px #2658c7, 0px -2px 1px #fff;
	    font-weight: bold;
	}

</style>
</head>

<body>

	<!-- 헤더 시작 -->
	<%@ include file="/WEB-INF/views/main/header.jsp"%>
	<!-- 헤더 끝 -->




	<!-- page-header-start -->
	<div class="page-header" >
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="page-section" >
						<h1 class="page-title" style="font-weight: 700;">IT 게시판</h1>
						<p class="page-text" id="page-text">공지사항 / 자유게시판 / Q&A</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row" >
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			<!-- <h1 class="mb30">IT게시판</h1> -->
		</div>
	</div>
	<footer>
		<div class="inner" id="inner">
			<ul class="menu">
				<li><a href="board.do?type=공지사항#page-text"
					style="font-size: 24px;" id="info"  class="click-menu">공지사항</a></li>
				<li><a href="board.do?type=자유게시판#page-text"
					style="font-size: 24px;" id="free"  class="click-menu">자유게시판</a></li>
				<li><a href="board.do?type=QnA#page-text"
					style="font-size: 24px;" id="qna"  class="click-menu">Q&A</a></li>				
			</ul>
				
				<input type="hidden" id="getType" value="${list1[0].type}">
		</div>
	</footer>

	<script type="text/javascript">
	
		//##게시판 메뉴 클릭시 텍스트 스타일 변경
		var type = document.getElementById("getType").value;
		
		console.log(type)
		var param = "";
		
		if(type==="공지사항"){
			param = "info"		
		}else if(type==="자유게시판"){
			param = "free"
		}else if(type==="QnA"){
			param = "qna"
		} 
		
		var clicked = document.getElementById(param);
		
		     clicked.classList.add("clicked");
	
	</script>



	<div class="row" id="row_table">
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="width: 80%;">


			<!-- <h3 class="mb20">Striped Rows</h3> -->


			<table class="table table-striped ">
				<!-- <caption>
          Optional table caption.
          </caption> -->

				<!--다른사람은 검색창-->
				
					
			<div class="st-pagination">
                <ul class="pagination" 
                	style="display: flex;
						   align-items: center;
						   justify-content: space-between;">
              		
              		<div class="input_keyword">
					<form action="board.do#page-text">
						<input type="text" name="keyword" id="input_keyword" value=""
							placeholder="제목 / 작성자 검색" class="inpTypo"> <input
							type="hidden" name="type" value="${list1[0].type}">

						<button type="submit" class="spr btn_search">
							<span class="material-symbols-outlined"> psychology_alt </span>
						</button>							
					</form>					
				</div>	
              		
              		
              		
                  <li><a href="boardWrite.do" aria-label="previous" style="font-size: 15px"><span aria-hidden="true">글쓰기</span></a> </li>
                 
                </ul>
             </div>

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

						<div id="remove">
							<c:forEach items="${list1}" var="list" varStatus="i">
								<tr>
									<td>${i.count+(pdto.nowpage*10)-10}</td>
									<td>${list.type }</td>
									<td><a href="boardDetail.do?b_seq=${list.seq}#inner" >${list.title }</a></td>
									<td>${list.id }</td>
									<td>${list.date }</td>
									<td>${list.count }</td>
								</tr>

							</c:forEach>

						</div>

					</tbody>

			
			</table>


			<script type="text/javascript">
	
		///=====자동 검색 기능======
		//keydown ,keypress, keyup
		/* 
			$('#input_keyword').on("keyup", function(){
				var search = $("#input_keyword").val();
				var type = $("#type").val();
				
				if(search.length>0){
					$.ajax({
						url : "searchList.do",
						type : "POST",
						data : {"search" : search,
								"type"   : type
								},	
						
						dataType : "JSON",
						success :resultJSON,
						error : function(e){
							console.log(e);
						}						
					});///ajax
					
					
					$.ajax({
						url : "searchPage.do",
						type : "POST",
						data : {"search" : search,
								"type"   : type
								},	
						
						dataType : "JSON",
						success :resultPage,
						error : function(e){
							console.log(e);
						}						
					});///ajax
		 			
					
										
				}//if
				else{
					$("#list").empty();
					$("#insert-btn").empty();
				}//else
			
			} );////
			
			
			
			//===== Ajax 게시글 입력 =====
	 		function resultPage(data){			
	 			console.log(data);	
	 			 			
	 			
	 			const div = document.getElementById('remove');
	 		

	 			// div.remove();
	 			 
	 				 			
	 		var html = "<span></span>";			
	 			for(var i=0; i<data.length; i++){				
	 				html +="<tr>";
	 				html +="<td>"+(i+1)+"</td>";
	 				html +="<td>"+data[i].type +"</td>";
	 				html +="<td>"+ data[i].title + "</td>";
	 				html +="<td>"+ data[i].id + "</td>";
	 				html +="<td>"+ data[i].date + "</td>";
	 				html +="<td>"+ data[i].count + "</td>";
	 				html +="</tr>";			
	 			}			
	 			html += "</table>";			
	 			$("#list").html(html); 
	 			
	 			
	 		}//게시판 리스트 받아오는 함수
	 			
	 	// ###페이징 버튼 함수
	 		function resultJSON(data){
	 			
	 			const removeBtn = document.getElementById('remove-btn');
	 			//removeBtn.remove();
	 			
	 			var html2 = "<li><a><span>«</span></a></li>"
	 				

	 				for(var i=${pdto.startpage}; i<= ${pdto.endpage}; i++){
	 					
	 					html2 += "<li>";
	 					html2 += '<a href="board.do?page='+(i-1)+'#page-text" >';
	 					html2 += i ;
	 					html2 +="</a></li>";
	 				}
	 			html2 +="<li><a> <span>»</span></a></li>";
	 			$("#insert-btn").html(html2) 	
	 				
	 		}//페이지 함수끝
	 	
	 		 */
	 		
		
			
		</script>
		
			<hr>

			<div id="remove-btn" 
					style="text-align: center;
					font-size:15px;
				    display: flex;
				    flex-direction: column;
				    align-items: center;">
					    
				<ul class="pagination" id="insert-btn">
					<!-- li태그의 클래스에 disabled를 넣으면 마우스를 위에 올렸을 때 클릭 금지 마크가 나오고 클릭도 되지 않는다.-->
					<!-- disabled의 의미는 앞의 페이지가 존재하지 않다는 뜻이다. -->


					<li><a href="board.do?page=${pdto.nowpage-2}&type=${list1[0].type}&keyword=${keyword}#page-text"> <span>«</span></a></li>

					<!-- ##페이지 버튼 출력하는 반복문 -->
					<c:forEach var="i" begin="${pdto.startpage}" end="${pdto.endpage}"
						step="1">

						<li id="page${i}"><a href="board.do?page=${i-1}&type=${list1[0].type}&keyword=${keyword}#page-text">
								<c:out value="${i}"></c:out>
						</a></li>

					</c:forEach>

					<li><a href="board.do?page=${pdto.nowpage}&type=${list1[0].type}&keyword=${keyword}#page-text"> <span>»</span></a></li>

				</ul>
	
				<input type="hidden" value="${pdto.nowpage}" id="getPage">
				
			
			</div>
			
	
			
			<script type="text/javascript">
	
				//## 페이지 이동시 버튼 스타일 변경
				var page = document.getElementById("getPage").value;
				
				console.log("클릭한 페이지" + page)
		
				var paged = document.getElementById("page"+page);
				
				paged.classList.add("active");
				
			</script>
			

		</div>
	</div>
	</div>
	</div>

	<!-- footer 시작 -->
	<%@ include file="/WEB-INF/views/main/footer.jsp"%>
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
