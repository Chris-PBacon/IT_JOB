<%@page import="com.five.member.entity.memberNVO"%>
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

<!-- 사이드메뉴 -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="/css/sidebar.css">
    


</head>



<body>

	<!-- 헤더 시작 -->
		<%@ include file="/WEB-INF/views/main/header.jsp" %>	  
	<!-- 헤더 끝 -->







<!--로그인 회원가입 시작-->
  <h2>일반 회원정보 수정페이지</h2>
  


  

<!--정보 수정 부분-->
  <div class="container1" id="containerf" style="margin: auto; margin-top: 100px; margin-bottom: 100px; height: 600px;" >
  
  <!-- 사이드 메뉴 -->

    <div class="form-container sign-up-container" >  
    
      <form action="udpateN.do" method="post">
        <h1>정보수정</h1>
        <div class="social-container">

        </div>
        <input type="text" name="m_name"  value="${nvo.m_name}" readonly="readonly" />
        
        <input type="text" name="m_id" value="${nvo.m_id}" readonly="readonly" />
        
        <input type="password" name="m_pw" value="${nvo.m_pw}" />
        
        <input type="date" name="m_birth" value="${nvo.m_birth }" />
        
        <input type="email" name="m_email" value="${nvo.m_email}" />
        
        <input type="number" name="m_phone" value="${nvo.m_phone}" />
        
        <div style="display: flex; align-items: center;">
         <span style="font-size: 18px; margin: 20px; margin-bottom: 25px;">희망 근무지 : </span> 
         	<select name="m_place" >
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
       
        <input type="hidden" name="m_type" value="1"/>
 
        <button type="submit">수정완료</button>
        
      </form>
    </div>



    <!--마이페이지 부분-->

   
    <%
    
	memberNVO nvo = (memberNVO)request.getAttribute("nvo");
    
    String phoneNum = nvo.getM_phone();
    
  
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
        <input type="text"  value="${nvo.m_name }" placeholder="Name" readonly="readonly"/>
        <input type="text"  value="${nvo.m_id }" placeholder="ID" readonly="readonly"/>
        
        <input type="password" value="${nvo.m_pw }" placeholder="Password" readonly="readonly"/>
        
        <input type="date" value="${nvo.m_birth }" placeholder="생년월일" readonly="readonly"/>
        
        <input type="email" value="${nvo.m_email }" placeholder="Email" readonly="readonly"/>
        
        <input type="text" value="<%=phoneNum%>" readonly="readonly"/>
        
		 <div style="display: flex; align-items: center;">
         <span style="font-size: 18px; margin: 20px; margin-bottom: 25px;">희망 근무지 : ${nvo.m_place} </span> 
         	
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
