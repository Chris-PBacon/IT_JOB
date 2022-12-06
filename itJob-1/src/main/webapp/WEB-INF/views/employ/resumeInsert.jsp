<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="Digital marketing courses website template that can help you boost your business courses website and its completely free.">
<meta name="keywords" content="seo,free website template,responsive website template,marketing,search engine optimization, web analytics ">
<title>이력서 작성</title>
<!-- 내  css 연결-->
<link href="<%=request.getContextPath()%>/css/resume.css" rel="stylesheet" type="text/css"/>
<!-- Bootstrap 현재버전-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- Bootstrap -->
<link href="/css/bootstrap.min.css" rel="stylesheet">
<!-- Style CSS -->
<link href="/css/style.css" rel="stylesheet">
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
<!-- FontAwesome CSS -->
<link rel="stylesheet" type="text/css" href="/css/fontello.css">
<link href="/css/font-awesome.min.css" rel="stylesheet">
<!-- jQuery-->
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
</body>
 
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

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
          <h1 class="page-title">resume</h1>
          <p class="page-text">이력서 작성 공간</p>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- page-header-close --> 
<br><br><br>

<!-- 본문 시작 -->
<div class="body-all">

  <div class="d-grid gap-2 d-md-flex justify-content-md-end">
    <button class="btn btn-secondary" type="button" onclick="location='/resumeShow.do'">조회 페이지로</button>
  </div>

  
  <!-- 사용자 기본 정보 출력 -->
  <h2 style="font-weight: 900; margin-left: 12%; margin-top: 30px;">기본 정보</h2>
  <div class="info">
    <div id="info-color">
      <table class="table table-bordered"  id="user-info" style="width: 90%; border-collapse: collapse;">
        <tr class="school-head"  style="background-color: #F8FAFD;">
          <th colspan="2">${nvo.m_name} 님의 회원정보</th>
        </tr>
        <tr> 
          <td style="background-color: #F8FAFD;">생일</td>
          <td>${nvo.m_birth}</td>
        </tr>
        <tr>
          <td style="background-color: #F8FAFD;">번호</td>
          <td>${nvo.m_phone}</td>
        </tr>
        <tr>
          <td style="background-color: #F8FAFD;">이메일</td>
          <td>${nvo.m_email}</td>
        </tr>
        <tr>
          <td style="background-color: #F8FAFD;">희망근무지</td>
          <td>${nvo.m_place}</td>
        </tr>
      </table>
    </div>
  </div>


  <h2 style="font-weight: 900; margin-left: 12%;">입력사항</h2>
  <div class="form-center-align" >
  
    <div class="career">
    <div class="career-color">
  <!-- 이력서 form -->
  <form method="post" action="resumeInsert.do" id="resume-form">

    <!-- 사진 첨부칸 -->
    <div id="img-div">
    <h3>증명사진</h3>
    <div class="form-floating mb-3">
      <input type="text" class="form-control" id="floatingInput" name="r_img" placeholder="name@example.com" required>
      <label for="floatingInput">이미지 주소만 가능합니다.</label>
    </div>
  </div>
  
  
    <!-- 경력 유무 체크칸 -->
    <h3>경력</h3>
    <div class="career-div">
      <div class="btn-group" role="group" aria-label="Basic radio toggle button group">
        <input type="radio" class="btn-check " name="r_exp" value="1" id="btnradio1" autocomplete="off">
        <label class="btn btn-outline-primary" for="btnradio1">경력 유</label>
      
        <input type="radio" class="btn-check" name="r_exp" value="0" id="btnradio2" autocomplete="off">
        <label class="btn btn-outline-primary" for="btnradio2">경력 무</label>
      </div>
  
      
    </div>
  
  
    <!-- 학력 기재칸 -->
    <h3>최종학력</h3>
    <table class="table table-bordered" id="school-table" style="width: 100%; border-collapse: collapse;">
      <tr class="school-head" style="background-color: #F8FAFD;">
        <th style="text-align: center;">학교명</th>
        <th style="text-align: center;">재학기간</th>
        <th style="text-align: center;">전공</th>
        <th style="text-align: center;">졸업여부</th>
      </tr>
      <tr>
          <td><input type="text" name="r_school" style="width: 100%; border: 0;"></td>
          <td><input type="text" name="r_school" style="width: 100%; border: 0;"></td>
          <td><input type="text" name="r_school" style="width: 100%; border: 0;"></td>
          <td><input type="text" name="r_school" style="width: 100%; border: 0;"></td>
      </tr>
    </table>
   
  
    <!-- 자격 증명 기재칸 -->
    <div class="license">
      <h3>자격증명</h3>
      <table class="table table-bordered" id="license-table" style="width: 100%; border-collapse: collapse;">
        <tr class="school-head"  style="background-color: #F8FAFD;">
          <th style="text-align: center;">자격증명</th>
          <th style="text-align: center;">기관명</th>
        </tr>
        <tr>
            <td><input type="text" name="r_license" style="width: 100%; border: 0;"></td>
            <td><input type="text" name="r_license" style="width: 100%; border: 0;"></td>
        </tr>
        <tr>
          <td><input type="text" name="r_license" style="width: 100%; border: 0;"></td>
          <td><input type="text" name="r_license" style="width: 100%; border: 0;"></td>
        </tr>
      </table>
    </div>
   
  
    <!-- 수상내역 기재칸 -->
    <div class="award">
      <h3 class="form-label">수상내역</h3>
      <table class="table table-bordered" id="award-table" style="width: 100%; border-collapse: collapse;">
        <tr class="school-head"  style="background-color: #F8FAFD;">
          <th style="text-align: center;">수상명</th>
          <th style="text-align: center;">내용</th>
          <th style="text-align: center;">수상일자</th>
          <th style="text-align: center;">기관명</th>
        </tr>
        <tr>
            <td><input type="text" name="r_award" value="${fn:split(rvo.r_award, ',')[0]}" style="width: 100%; border: 0;"></td>
            <td><input type="text" name="r_award" value="${fn:split(rvo.r_award, ',')[1]}" style="width: 100%; border: 0;"></td>
            <td><input type="text" name="r_award" value="${fn:split(rvo.r_award, ',')[2]}" style="width: 100%; border: 0;"></td>
            <td><input type="text" name="r_award" value="${fn:split(rvo.r_award, ',')[3]}" style="width: 100%; border: 0;"></td>
        </tr>
        <tr>
          <td><input type="text" name="r_award" value="${fn:split(rvo.r_award, ',')[4]}" style="width: 100%; border: 0;"></td>
          <td><input type="text" name="r_award" value="${fn:split(rvo.r_award, ',')[5]}" style="width: 100%; border: 0;"></td>
          <td><input type="text" name="r_award" value="${fn:split(rvo.r_award, ',')[6]}" style="width: 100%; border: 0;"></td>
          <td><input type="text" name="r_award" value="${fn:split(rvo.r_award, ',')[7]}" style="width: 100%; border: 0;"></td>
        </tr>
        <tr>
          <td><input type="text" name="r_award" value="${fn:split(rvo.r_award, ',')[8]}" style="width: 100%; border: 0;"></td>
          <td><input type="text" name="r_award" value="${fn:split(rvo.r_award, ',')[9]}" style="width: 100%; border: 0;"></td>
          <td><input type="text" name="r_award" value="${fn:split(rvo.r_award, ',')[10]}" style="width: 100%; border: 0;"></td>
          <td><input type="text" name="r_award" value="${fn:split(rvo.r_award, ',')[11]}" style="width: 100%; border: 0;"></td>
        </tr>
      </table>
    </div> <!-- career div close-->
    </div> <!-- career color div close-->
    </div>
   
    
    <input type="hidden" name="m_id" value="${id}">
    
  
  
  <!-- 자기소개서 -->
  
  <div class="intro-color">
    <h2 style="font-weight: 900;">자기소개서</h2>
    <div id="intro" class="intro">
      <div id="add-div">

      <div id="intro-contents-only" class="intro-contents" style="display: flex;">

        <div class="form-floating mb-3 intro-input" >
          <input type="text" name="rm_title" class="form-control" id="floatingInput" placeholder="제목">
          <label for="floatingInput">자기소개서 제목 입력 칸입니다.</label>
        </div>


        <div class="form-floating intro-input" id="page-move1">
          <textarea name="rm_content" class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style="height: 270px"></textarea>
          <label for="floatingTextarea2">내용을 입력하세요.</label>
        </div>

      </div> <!-- intro-contents-only close-->
    </div>
    <div style="width: 80%;">
      <button id="add-btn"><a href="#page-move1">항목 추가</a></button>
    </div>

    </div>
  </div>
    
  
    <div class="submit-btn">
	    <!-- 전송버튼 -->
	    <button type="submit" id="last-btn" class="btn btn-primary">등록</button>
    </div>
  </form>
</div>
  

  </div>
  <!-- 본문 끝 -->

	<!-- footer 시작 -->
		<%@ include file="/WEB-INF/views/main/footer.jsp" %>	  
	<!-- footer 끝 -->

<script>
    var cnt = 1;


    $('#add-btn').click(function() {
        console.log("button click!!")
      	cnt += 1;
      	console.log(cnt)
      	
        var html = `  
        <div id="intro-contents-only" class="intro-contents" style="display: flex;">

			<div class="form-floating mb-3 intro-input">
			  <input type="text" name="rm_title" value="${rsvo.rm_title}" class="form-control" id="floatingInput" placeholder="제목">
			  <label for="floatingInput">자기소개서 제목 입력 칸입니다.</label>
			</div>
			
			
			<div class="form-floating intro-input" id="page-move${cnt}">
			  <textarea name="rm_content" class="form-control" placeholder="Leave a comment here" id="floatingTextarea2"  style="height: 270px"></textarea>
			  <label for="floatingTextarea2">내용을 입력하세요.</label>
			</div>

		</div> <!-- intro-contents-only close-->
        
                  `
                  

        $('#add-div').append(html);

    });


  function test(){
    console.log("안녕");
  }
  
</script>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="/js/jquery.min.js" type="text/javascript"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="/js/bootstrap.min.js" type="text/javascript"></script> 
<script src="/js/menumaker.js" type="text/javascript"></script> 
<script type="text/javascript" src="/js/jquery.sticky.js"></script> 
<script type="text/javascript" src="/js/sticky-header.js"></script> 

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>
    