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

<!--alswjd-->  
<link href="/css/board.css" rel="stylesheet">

<style> 

</style>
<!-- include libraries(jQuery, bootstrap) -->
<!-- <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet"> -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<script type="text/javascript" src="./smarteditor2/js/HuskyEZCreator.js" charset="utf-8"></script>
</head>


	<!-- 헤더 시작 -->
		<%@ include file="/WEB-INF/views/main/header.jsp" %>	  
	<!-- 헤더 끝 -->


<!-- page-header-start -->
<div class="page-header">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="page-section">
          <h1 class="page-title" style="font-weight: 700;" >IT 게시판</h1>
          <p class="page-text">마음편히 쓰세요~</p>
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

 
<!--내부 -->   


  <footer>
    <div class="inner">
      <ul class="menu">
        <li> <a href="javascript:void(0)">공지사항</a></li>
        <li> <a href="javascript:void(0)">자유 게시판</a></li>
        <li> <a href="javascript:void(0)">QnA</a></li>
      </ul>
    </div>
  </footer>

<!--게시판 만드는곳-->


<section class="container2">
<div class="tatalcontent" style="width: 80%;" >


	<form action="boardInsert.do">
	  <div class="content" style="width:100% ;">
	    <input type="text" name="b_title" placeholder="제목을 입력해주세요" style="width: 100%; border-radius: 13px; height: 60px;">
	  </div>
	
	  <div class="s_content">
	    <input type="checkbox" name=""> 작성자명 비공개
	  </div>
	  <div>
	  	 <select name="b_type" title="게시판종류">
	  		<option value="" >카테고리선택</option>
	        <option value="info" >공지사항</option>
	        <option value="free">자유 게시판</option>
	        <option value="qna">QnA</option>
	     </select>
	  </div>
	</div>
	  <div class="smart">
	    <textarea id="txtContent" name="b_content" rows="10" cols="100" style="width: 100%; height: 414px;"></textarea>
	  </div>
	  <div class="row">
	    <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12" > <button type="submit" class= "btn btn-primary"  style="position: relative;  left: 200%; height: 60px; width: 80px; font-size: 16px; ">등록</button>  </div>
	  </div>
	  
	  <input type="text" style="display:none" name="m_id"  value="${id}">
		  
	</form>
</section>

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
<script>
  var oEditors = [];
    nhn.husky.EZCreator.createInIFrame({
      oAppRef: oEditors,
      elPlaceHolder: 'txtContent',
      sSkinURI: '/smarteditor2/SmartEditor2Skin.html',
      fCreator: 'createSEditor2'
    });
</script>
<!-- CLOUDTURING -->
<script>
  window.dyc = {
      chatbotUid: "ec026495b7e07863"
  };
</script>
<script async src="https://cloudturing.chat/v1.0/chat.js"></script>
<!-- End CLOUDTURING -->
</html>
    