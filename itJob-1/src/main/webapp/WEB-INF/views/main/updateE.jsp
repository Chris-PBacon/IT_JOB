<%@page import="com.five.member.entity.memberEVO"%>
<%@page import="org.springframework.ui.Model"%>
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





<!--로그인 회원가입 시작-->
  <h2>기업 회원정보 수정페이지</h2>

<!--정보 수정 부분-->
  <div class="container1" id="containerf" style="margin: auto; margin-top: 100px; margin-bottom: 100px; height: 600px;" >
    <div class="form-container sign-up-container" >  
    
      <form action="udpateE.do" method="post">
        <h1>정보수정</h1>
        <div class="social-container">

        </div>
        <input type="text" name="e_name"  value="${evo.e_name}" readonly="readonly" />
        
        <input type="text" name="e_id" value="${evo.e_id}" readonly="readonly" />
        
        <input type="password" name="e_pw" value="${evo.e_pw}" />
        
        <input type="text" name="e_num" value="${evo.e_num }" />
        
        <input type="email" name="e_email" value="${evo.e_email}" />
        
        <input type="number" name="e_phone" value="${evo.e_phone}" />
        
        <div style="display: flex; align-items: center;">
         <span style="font-size: 18px; margin: 20px; margin-bottom: 25px;">희망 근무지 : </span> 
         	<select name="e_place" >
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
            <option value="지역무관">지역무관</option>
          </select>
        </div>
       
        <button type="submit">수정완료</button>
        
      </form>
    </div>



    <!--마이페이지 부분-->
        <%
    
	memberEVO evo = (memberEVO)request.getAttribute("nvo");
    
    String phoneNum = evo.getE_phone();
  
    // 마스킹 조건문
    if(phoneNum != null && !"".equals(phoneNum)){
    	phoneNum = phoneNum.substring(0,3) + "****" 
        		+ phoneNum.substring(phoneNum.length()-4, phoneNum.length());
    }
    System.out.println("휴대폰 번호 마스킹 : " + phoneNum);
    %>


  

   <div class="form-container sign-in-container" >  
    
      <form action="#">
        <h1>마이페이지</h1>
        <div class="social-container">

        </div>
        <input type="text"  value="${evo.e_name }" placeholder="Name" readonly="readonly"/>
        <input type="text"  value="${evo.e_id }" placeholder="ID" readonly="readonly"/>
        
        <input type="password" value="${evo.e_pw }" placeholder="Password" readonly="readonly"/>
        
        <input type="text" value="${evo.e_num }" readonly="readonly"/>
        
        <input type="email" value="${evo.e_email }" placeholder="Email" readonly="readonly"/>
        
        <input type="text" value="<%=phoneNum %>" readonly="readonly"/>
        
		 <div style="display: flex; align-items: center;">
         <span style="font-size: 18px; margin: 20px; margin-bottom: 25px;">희망 근무지 : ${evo.e_place} </span> 
         	
        </div>
        
   

 
        <button type="button"><a href="main.do" style="color: white;">홈으로</a></button>
       </form> 
      
    </div>
        
        
        


    <!--오버레이 부분-->
    <div class="overlay-container">
      <div class="overlay">
        <div class="overlay-panel overlay-left">
          <h1 style="color: white;">Welcome!!</h1>
          <p>수정을 다 하셨다면 '수정완료' 버튼을 클릭!</p>
          <button class="ghost" id="signIn">마이페이지</button>
        </div>


        <div class="overlay-panel overlay-right">
          <h1 style="color: white;">Update, Profile!</h1>
          <p>당신의 회원 정보를 수정하고 싶나요?</p>
          <button class="ghost" id="signUp">정보수정</button>
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
 
</body>
</html>
