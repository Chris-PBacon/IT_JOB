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
  .service-block{
    position: relative;
    width:270px;
  	height:470px;
  }
  h3{
  	font-size: 20px;
  	font-weight: bold;
  }
  .lectureFilter{
  	display: none;
  }
</style>
</head>

<body>
	
      <!--헤드부분 시작-->
   		<%@ include file="/WEB-INF/views/main/header.jsp" %>
  	  <!-- 헤드부분 끝!!! -->

<!-- 강의 분류 시작 -->
<div class="container">
  <form action="filterLecture.do" method="post">

	<div>
		<h2>서비스중인 강의목록</h2>
		<h3>원하는 강의의 태그를 선택해보세요!</h3>
	
	</div>

    <div class="second_div">
      <div class="third_div">
        <h5>분야</h5>
      </div>
      <div>
        <button class="btn btn-xs btn_baek" type="button" name="l_type" value="type-시스템">시스템</button>
        <button class="btn btn-xs btn_baek" type="button" name="l_type" value="type-서버">서버</button>
        <button class="btn btn-xs btn_baek" type="button" name="l_type" value="type-WEB">WEB</button>
        <button class="btn btn-xs btn_baek" type="button" name="l_type" value="type-인공지능">인공지능</button>
        <button class="btn btn-xs btn_baek" type="button" name="l_type" value="type-데이터분석">데이터분석</button>
      </div>
      
    </div>

    <div class="second_div">
      <div class="third_div">
        <h5>난이도</h5>
      </div>
      <div>
        <button class="btn btn-xs btn_baek" type="button" name="l_level" value="level-입문">입문</button>
        <button class="btn btn-xs btn_baek" type="button" name="l_level" value="level-초급">초급</button>
        <button class="btn btn-xs btn_baek" type="button" name="l_level" value="level-중급">중급</button>
        <button class="btn btn-xs btn_baek" type="button" name="l_level" value="level-고급">고급</button>
      </div>
    </div>

    <div class="second_div">
      <div class="third_div">
        <h5>언어</h5>
      </div>
      <div>
        <button class="btn btn-xs btn_baek" type="button" name="l_language" value="lang-C언어">C</button>
        <button class="btn btn-xs btn_baek" type="button" name="l_language" value="lang-C++">C++</button>
        <button class="btn btn-xs btn_baek" type="button" name="l_language" value="lang-JAVA">자바</button>
        <button class="btn btn-xs btn_baek" type="button" name="l_language" value="lang-Python">파이썬</button>
        <button class="btn btn-xs btn_baek" type="button" name="l_language" value="lang-JavaScript">자바스크립트</button>
        <button class="btn btn-xs btn_baek" type="button" name="l_language" value="lang-HTML/CSS">HTML/CSS</button>
        <button class="btn btn-xs btn_baek" type="button" name="l_language" value="lang-SQL">SQL</button>
        <button class="btn btn-xs btn_baek" type="button" name="l_language" value="lang-Linux">Linux</button>
      </div>
      
    </div>

    <div class="second_div">
      <div class="third_div">
        <h5>가격</h5>
      </div>
      <div>
        <button class="btn btn-xs btn_baek" type="button" value="price-f">무료</button>
        <button class="btn btn-xs btn_baek" type="button" value="price-p">유료</button>
      </div>
    </div>
    <div id="searchBox">
      <!-- <button class="btn btn-xs btn_baek" onclick="selected();" type="button">전체보기</button>-->
      <!--<button class="btn btn-xs btn_baek" type="submit">적용</button>-->
      <button id="reset" class="btn btn-xs" type="button" onclick=" reset_click();" style=" margin: 5px; margin-left:20px;
      background-color: aliceblue;">초기화</button>
    </div>
  </form>
</div>
<!-- 강의 분류 끝 -->
 

	<!-- cources-start-->
	<div class="space-medium">
	  <div class="container">
	    
	    <div class="row lecturePart"> 
		 <!-- 강의 시작-->
	      <c:forEach items="${list}" var="lecture" varStatus="i">
	      	<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
		        <div class="service-block c_lec">
		          <div class="c_img">
		            <img src="${lecture.l_img}" alt="">
		          </div>
		          <div class="service-content c_lec">
		            <h3><a href="lectureDetail.do?l_seq=${lecture.l_seq}" class="title">${lecture.l_title}</a></h3>
		            <h4>${lecture.l_teacher}</h4>
		            <h5 id='result'><a href="" class="btn-link">￦ ${lecture.l_price}</a></h5></div>
		        </div>
		      </div>
	      </c:forEach>
	      <!-- cources-close--> 
	    </div>
	    <div class="row lectureFilter">
		</div>
	  </div>
	</div>
	 <!-- cources-close--> 

	<!-- footer start -->
	<%@ include file="/WEB-INF/views/main/footer.jsp" %>
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
	    	filter();
	    	
	    }else{
	    	this.classList.add('btn-active');
	    	filter();
	    }
	}
	/* 비동기 필터통신 */
	function filter(){
		var activeButton = document.querySelectorAll('.btn-active');
		var sendUrl = '?';
		for (var i = 0; i < activeButton.length; i++){
			if(activeButton[i].value.includes('type')){
				var value = activeButton[i].value.substr(5);
				
				if(sendUrl.includes('l_type')){
					sendUrl += ','+ value;
				}else{
					sendUrl += 'l_type='+ value;
				}
			}else if(activeButton[i].value.includes('level')){
				var value = activeButton[i].value.substr(6);
				if(sendUrl.includes('l_level')){
					sendUrl += ','+ value;
				}else{
					sendUrl += '&l_level='+ value;
				}
			}else if(activeButton[i].value.includes('lang')){
				var value = activeButton[i].value.substr(5);
				if(sendUrl.includes('l_language')){
					sendUrl += ','+ value;
				}else{
					sendUrl += '&l_language='+ value;
				}
			}else if(activeButton[i].value.includes('price')){
				var value = activeButton[i].value.substr(6);
				if(sendUrl.includes('l_price')){
					sendUrl += ','+ value;
				}else{
					sendUrl += '&l_price='+ value;
				}
			}
		}
		console.log(sendUrl);
		$.ajax({
			url : "filterLecture.do"+sendUrl,
			type : 'get',
			dataType : 'json',
			success: loadLecture,
			error : function(e){
				console.log(e);
			}
		});
	}
	
	
	
	/* 강의뿌려주는 함수 */
	function loadLecture(data){
		console.log(data);
		var html;
		
		for(var i = 0; i<data.length; i++){
			html += "<div class='col-lg-4 col-md-4 col-sm-6 col-xs-12'>";
			html += "<div class='service-block c_lec'>";
			html += "<div class='c_img'>";
			html += "<img src='"+ data[i].l_img +"' alt=''></div>";
			html += "<div class='service-content c_lec'>";
			html += "<h3><a href='lectureDetail.do?l_seq="+ data[i].l_seq +"' class='title'>"+ data[i].l_title +"</a></h3>";
			html += "<h4>"+data[i].l_teacher+"</h4>";
			html += "<h5 id='result'><a href='' class='btn-link'>￦ "+data[i].l_price+"</a></h5></div>";
			html += "</div></div>";
		}
		$('.lectureFilter').html(html);
		$('.lectureFilter').css('display','block');
		$('.lecturePart').css('display','none');
	}
	
	
	for (var i = 0; i < menuLinks.length; i++){  
	    menuLinks[i].addEventListener('click', clickMenuHandler);        
	}
	
	function reset_click(){
	    $('.btn').removeClass("btn-active");
	    filter();
	    
	    
	}


</script>

<!-- 1000단위 ,(콤마) 찍어주는 JS
<script type="text/javascript">
	const numberWithCommas  = (x) => {
	   return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}

	document.querySelector('#result').innerText = ' ￦ ' + numberWithCommas();
</script>-->

</body>
</html>
