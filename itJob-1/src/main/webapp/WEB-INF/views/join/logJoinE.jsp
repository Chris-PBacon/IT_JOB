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

</head>

<body>



	<!-- 헤더 시작 -->
		<%@ include file="/WEB-INF/views/main/header.jsp" %>	  
	<!-- 헤더 끝 -->





<!--기업 로그인 회원가입 시작-->
  <h2>기업 로그인 / 회원가입 페이지임</h2>

<!--회원가입 부분-->
  <div class="container1" id="containerf" style="margin: auto; margin-top: 100px; margin-bottom: 100px; height: 600px;" >
    <div class="form-container sign-up-container" >  
      <form action="joinE.do" method="post">
        <h1>기업 회원가입</h1>
        <div class="social-container">

        </div>
        <input type="text" name="e_name" placeholder="기업명"  required/>
        <input type="text" name="e_id" placeholder="ID" required/>
        <input type="password" name="e_pw" placeholder="Password" required/>
        <input type="number" name="e_num" placeholder="사업자번호 : ' - ' 없이 숫자만 입력" />
        <input type="email" name="e_email" placeholder="Email" required/>
        <input type="number" name="e_phone" placeholder="Phone :  ' - '없이 숫자만 입력" required/>
        <div style="display: flex; align-items: center;">
         <span style="font-size: 18px; margin: 20px; margin-bottom: 25px;">기업 소재지 : </span> 
         <select name="e_place" required>
            <option value>시/도 선택</option>
            <option value="강원">강원</option>
            <option value="경기">경기</option>
            <option value="경남">경남</option>
            <option value="경북">경북</option>
            <option value="광주">광주</option>
            <option value="대구">대구</option>
            <option value="대전">대전</option>
            <option value="부산">부산</option>
            <option value="서울">서울</option>
            <option value="울산">울산</option>
            <option value="인천">인천</option>
            <option value="전남">전남</option>
            <option value="전북">전북</option>
            <option value="제주">제주</option>
            <option value="충남">충남</option>
            <option value="충북">충북</option>
            
          </select>
        </div>
       
        
        




        <button>회원가입</button>
      </form>
    </div>


    <!--로그인 부분-->
    <div class="form-container sign-in-container">
      <form action="loginE.do" method="post">
        <h1>기업 로그인</h1>
        <div class="social-container">
          
        </div>
        
        <input type="text" name="e_id" placeholder="ID" />
        <input type="password" name="e_pw" placeholder="Password" />
        <a href="#">Forgot your password?</a>
        <button>로그인</button>
      </form>
    </div>

    <!--오버레이 부분-->
    <div class="overlay-container">
      <div class="overlay">
        <div class="overlay-panel overlay-left">
          <h1 style="color: white;">Welcome!!</h1>
          <p>회원가입을 하신 후 로그인을 해주세요!</p>
          <button class="ghost" id="signIn">로그인</button>
        </div>


        <div class="overlay-panel overlay-right">
          <h1 style="color: white;">Hello, Friend!</h1>
          <p>처음 방문 하셨다면 회원가입을 해주세요!</p>
          <button class="ghost" id="signUp">회원가입</button>
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

<!--로그인폼 js-->
<script type="text/javascript" src="/js/join.js"></script>
<!-- 로그인 실패시 경고  -->


 
</body>
</html>
