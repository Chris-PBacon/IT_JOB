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
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
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
<!-- include libraries(jQuery, bootstrap) -->
<!-- <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet"> -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<script type="text/javascript" src="./smarteditor2/js/HuskyEZCreator.js" charset="utf-8"></script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>



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
          <h1 class="page-title" style="font-weight: 700;">IT 게시판</h1>
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
  <div class="inner" id="inner" >
    <ul class="menu">   
    <c:choose>
    	<c:when test="${bvo.b_type eq '공지사항' }">
    		<li> <a href="javascript:void(0)">공지사항</a></li>
    	</c:when>
    	<c:when test="${bvo.b_type eq '자유게시판' }">
    		<li> <a href="javascript:void(0)">자유 게시판</a></li>
    	</c:when>
    	<c:when test="${bvo.b_type eq 'QnA' }">
    		<li> <a href="javascript:void(0)">QnA</a></li>
    	</c:when>    
    </c:choose>
    </ul>
  </div>
</footer>




<!--게시판 만드는곳-->
<div id="sri_section" class=" layout_full ">
  <div id="sri_wrap">
    <div id="content">
      <div class="company_honest_qna">
        <div class="contents_container detail_wrap">
          <a href="board.do" class="btn_back_list">전체 게시글</a>         
          <!-- 게시글 보기 -->
          <div class="post_view_wrap">
            <!-- 게시글 상단 -->        
            <div class="post_top">
              <h1 class="qna_subject">${bvo.b_title}</h1>
            </div>
            <!-- // 게시글 상단 -->
            <!-- 게시글 정보 -->
            <div class="post_infos">
              <div class="post_profile">
                <div class="profile_pic_wrap">
                  <div class="profile_pic profile1">
                    <svg>
                      <use xlink:href="#profile_pic1"></use>
                    </svg>
                  </div>
                  </a>
                </div>
              </div>
            </div>
            <!-- // 게시글 정보 -->

            <!-- 게시글 내용 -->
            
            <div class="post_cont">
              <div>
           
              ${bvo.b_content}
           
              </div>
            </div>
	
          <!--댓글 쓰는 곳-->
          
          <form id="formC">
	          <div class="comment_input_wrap">
	            <div class="comment_input img_add">
	            
	            
	              <textarea class="scrollbar" name="c_content"  placeholder="댓글 한 번 작성 해봐" id="submitBtn2" value="댓글작성"></textarea>
	            </div>
	            <div class="comment_input_bot">
	              <span class="comment_count"> <em>0</em>/1000자 </span>
	            </div>
	            
	            <input type="hidden" name="b_seq" id="bseq" value="${bvo.b_seq}">
	            <input type="hidden" name="m_id" value="${id}">
	     
	          	 
	         <a href="javascript:void(0)" class="btn btn-primary" id="submitBtn" type="button" style=" position: relative; left: 773px;" >댓글 입력</a>
	            
	          </div>           
		</form>
				
          <!--댓글 시작-->
          <div class="comment_lists_wrap" id="qna_answer_box">
            <div class="comment_lists_sort">
              <div class="inpSel">
                <select id="replySort" name="replySort" title="댓글 정렬 선택">
                  <option value="last" selected>최신 댓글순</option>
                  <option value="like ">인기 댓글순</option>
                </select>               	
              </div>
            </div>
            <div class="list_answer paywall">          
              <ul class="comment_lists" id="list">         
            </div>
          </div>
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
              <li> <a href="#">Contacts</a></li>
            </ul>
          </div>
        </div>
  
        <div class=" col-lg-4 col-md-4 col-sm-4 col-xs-12">
          <div class="footer-widget">
            <h3 class="footer-title">24 X 7 Support</h3>
            <div class="">
              <ul>
                <li> <i class="fa fa-map-marker"></i> 2000 Cambridge Ease template,72764 India</li>
                <li><i class="fa fa-phone"></i>800-123-4567</li>
                <li><i class="fa fa-envelope"></i>info@education.com</li>
              </ul>
            </div>
            <a href="#" class="btn btn-primary btn-sm">request a Course</a>
          </div>
        </div>

        <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12 ">
          <div class="footer-widget">
            <h3 class="footer-title">About Education</h3>
            <p>Velitconsectetur utleo velaoreet in bibendum felirbi iaculis iaculis dpibus ecenas one
              posuereorci ut euismod tristique. </p>
            <p>lorem ipsum dolr sit amet viedfum lacumdi postern lembneir siot lsedto sistompovelaoreet in
              bibendum egestacerat tempus magna nonrordueugloattis ultrices diam.</p>
          </div>
        </div>
        <!-- footer-about-close -->
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
          <div class="footer-line"></div>
        </div>
        <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
          <p>Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a>
          </p>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
          <div class="footer-social">
            <a href="#"><span><i class="fa fa-facebook"></i></span></a>
            <a href="#"><span><i class="fa fa-google-plus"></i></span> </a>
            <a href="#"><span class="active"><i class="fa fa-twitter"></i> </span></a>
            <a href="#"><span><i class="fa fa-instagram"></i></span> </a>
            <a href="#"><span><i class=" fa fa-pinterest"></i> </span></a>
            <a href="#"><span><i class="fa fa-linkedin"></i></span></a>
          </div>
        </div>
      </div>
    </div>
  </div>
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
      sSkinURI: './smarteditor2/SmartEditor2Skin.html',
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



<script type="text/javascript">		
		
		
		
		//#####페이지 이동 후 댓글 출력
			window.onload = function() { 
			    
		
			    var b_seq = parseInt(document.getElementById("bseq").value);
			    
			    console.log(b_seq);
			      
			      $.ajax({
			         
			          url: "commentList.do",
			          method: "POST",
			          data: {"b_seq" : b_seq},
			          dataType: "JSON",
			          success: commentList,
			          error: function(e) {
			        	console.log("에러");
							console.log(e);
						}				
			          			                	
			      })//ajax
			  };
		// 댓글 삭제 

		/////##댓글 입력 함수
		
		 $("#submitBtn").on('click',function boardComments(){
			        
			            var form1 = $("#formC").serialize();
			            console.log("form1 : " + form1)
			
			            console.log(form1);
			            $.ajax({
			               
			                url: "boardComments.do",
			                method: "POST",
			                data: form1,
			                dataType: "JSON",
			                success: commentList,
			                error: function(e) {
			 					console.log(e);
			 				}
			                			                	
			            })//ajax
			        });//onclick

		

			        // 삭제 기능
				function commentDelete(c_seq){
					//onsole.log(c_seq);
					
					var b_seq = ${bvo.b_seq};
					//console.log(b_seq);
		  		
					
						$.ajax({
							     url : 'commentDelete.do',
							     type : 'post',
							     data : {"c_seq" : c_seq,
							    	 	"b_seq" : b_seq},
							    dataType: "JSON",
							    
							    success: commentList,
				  		          error: function(e) {
				  		        	console.log("에러1212");
				  						console.log(e);
				  					}				
				  		          			                	
				  		      })//ajax
				  		  }; // 댓글 삭제 
				  		  
				  		  
				  		  

				  
				  
				  
				  
				       
			//### commentList 댓글 데이터 가져오는 함수
	  		function commentList(data){
	  			console.log(data);	
	  			
	  			
	  			var html = "";		
	  		
	  			for(var i=0; i<data.length; i++){
	  				html += "<li>";
	  				html +="<span class='comment_txt' name='c_content'>"+ data[i].c_content+"</span>";
	  				html +="<span id='cseq' name='c_content' style='display:none'>"+ data[i].c_seq+"</span>";			  				
	  				html +='<div class="comment_data_wrap">';
	  				html +='<button type="button" class="comment_data comment_like">수정하기 </button>';
	  				html +='<button type="button" class="comment_data comment_reply" id="comment_d" onclick="commentDelete(' + data[i].c_seq + ')">삭제하기 <strong></strong> </button>';
	  				html +='</div>';
	  				html +='<div class="comment_info">';
	  				html +="<span>"+ data[i].m_id +"<span>";
	  				html +='</div>';                                                                                                     
	  				html +='</div>';
	  				html +='</div>';
	  				html +='</li>';
	  										
	  			}			
	  			html += "</ul>";			
	  			$("#list").html(html)       
	  		};  //게시판 리스트 받아오는 함수
        
	  		
	  		
	
				      
				</script>



</body>
</html> 