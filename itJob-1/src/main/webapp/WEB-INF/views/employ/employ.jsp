<%@page import="com.five.member.entity.EmployVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<style>

  .service-icon {    
    margin-left: 25%;
    margin-bottom: 0%;
    
   }
   
  .space-medium{
    margin-top: 0%;
    padding-bottom: 1%;
    border-bottom-style: inset;
    border-bottom-width: 3px; 
    margin-bottom: 3%;
  }
  #employ-box{
    align-items: center;
    display: flex;
    
  }
  .employ-img{
    display:flex;   
    justify-content: center;
  }
  .employ-img>img{
    border-radius:50%; 
    width:150px; 
    height: 150px;
  }
  .employ {
    margin-left:5%;
    margin-top:5%;
  }
  #widget{
    width: 30%;
  }
  .img-responsive{
    display: flex;
    justify-content: center;
  }
  .post-img img{
    padding: 20px;
  }
  .carousel-inner{
    width: 1170px;
    height: 360px;
  }
  .carousel-inner img{
    height: 100%;
    width: 100%;
    object-fit: cover;
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
 
<% List<EmployVO> list = (List<EmployVO>)request.getAttribute("list"); %>
<% List<EmployVO> pList = (List<EmployVO>)request.getAttribute("pList"); %>
<!-- 메인시작 -->
<div class="space">
  <div class="container">
    <div class="row">

	  <!-- 베너광고 -->
	  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
	  <!-- 배너 끝 -->
	    <!-- Indicators -->
	    <ol class="carousel-indicators">
	      <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
	      <li data-target="#carousel-example-generic" data-slide-to="1"></li>
	      <li data-target="#carousel-example-generic" data-slide-to="2"></li>
	      <li data-target="#carousel-example-generic" data-slide-to="3"></li>
	    </ol>
	  
	    <!-- slides -->
	    <div class="carousel-inner" role="listbox">
	      <div class="item active">
	        <img src="../images/스마트인재개발원배너광고1.png" alt="...">
	      </div>
	
	      <div class="item">
	        <img src="../images/스마트인재개발원배너광고2.png" alt="...">
	      </div>
	
	      <div class="item">
	        <img src="../images/인공지능사관학교배너광고1.png" alt="...">
	      </div>
	      
	      <div class="item">
	        <img src="../images/인공지능사관학교배너광고2.png" alt="...">
	      </div>
	    </div>
	  
	    <!-- 컨트롤 버튼 -->
	    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
	      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	      <span class="sr-only">Previous</span>
	    </a>
	    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
	      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	      <span class="sr-only">Next</span>
	    </a>
	  </div>
	
	      <!-- 추천채용 -->
	      <div class="space-medium">
	        <div class="container">
	            <div class="row">
	                <div class="col-lg-12 col-md-12 col-sm-12 col-lg-12">
	                    <div class="section-title" id="here">
		                    <c:choose> 
			                	<c:when test="${not empty id}">
			                		<h2>${id}님 맞춤 채용공고입니다</h2>     			            			
			             		</c:when>             		
			              		<c:otherwise>
			              			<h2>로그인 후 맞춤 채용공고를 확인해보세요!</h2>
			              		</c:otherwise>             		
			              	</c:choose>
	                    </div>
	                </div>
	            </div>
				<!-- 추천 공고 내용 -->
	            <div class="row">
	            	<c:choose> 
			            <c:when test="${not empty pList}">
			            	          
				            <% for (int i =0; i<pList.size(); i++){ %>
				                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
				                    <div class="service-block">
				                        <div class="employ-img">
				                          <img src=" <%=pList.get(i).getJ_img()%>" alt="">
				                        </div>
				                        <div class="team-content mt20">
				                          <h3 class="team-title"> <%=pList.get(i).getJ_title()%></h3>
				                          <span class="team-meta"> <%=pList.get(i).getJ_content()%></span>
				                          <p> ~  <%=pList.get(i).getJ_date()%></p>
				                          <a href="detailEmploy.do?seq=<%=pList.get(i).getJ_seq()%>" class="btn-link">상세페이지</a>
				                        </div>
				                    </div>
				                </div>
							<%} %>   		           			            			
			          	</c:when>
			          	<c:otherwise>
				              <h3>해당하는 공고가 없습니다</h3>
				        </c:otherwise>
			         </c:choose>
	            </div>
	        	<!-- 추천 끝 -->             
	        </div>
	      </div>
	      <!-- 추천채용 끝 -->
	      
	      <!-- 위젯 구역 시작 -->
	      <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="widget"> 
			
	        <!-- 검색 -->
	        <div class="widget widget-search">
	          <form action="employSearch#here">
	            <div>
	               <c:choose> 
			          <c:when test="${not empty keyword}"> 	          
		                <input type="text" class="form-control search-form" name="keyword" value=${keyword}>
		                <button type="Submit"><i class="fa fa-search"></i></button>
		              </c:when>
			          <c:otherwise>
				        <input type="text" class="form-control search-form" name="keyword" placeholder="검색할 키워드를 입력하세요" required="required">
		                <button type="Submit"><i class="fa fa-search"></i></button>
				      </c:otherwise>
			       </c:choose>
	             </div>
	          </form>
	        </div>
	        <!-- 검색 끝 --> 
	        
	        <!-- 경력유무선택 시작 -->
	        <div class=" widget widget-archives">
	          <h2 class="widget-title">경력 유무</h2>
	          <ul>
	            <li><span class="widget-categories-icon"><i class="fa fa-circle-o"></i></span>
	              <a href="experience?num=0#here">신입</a></li>
	            <li><span class="widget-categories-icon"><i class="fa fa-circle-o"></i></span>
	              <a href="experience?num=1#here">경력</a></li>
	          </ul>
	        </div>
	        <!-- 경력유무선택 끝 --> 
	
	        <!-- 직무 선택 시작-->
	        <div class=" widget widget-categories">
	          <h2 class="widget-title">IT 직무 선택</h2>
	          <ul class="">
	            <li><span class="widget-categories-icon"><i class="fa fa-circle-o"></i></span> 
	              <a href="#">프론트엔드 개발자</a></li>
	            <li> <span class="widget-categories-icon"><i class="fa fa-circle-o"></i></span>
	              <a href="#">백엔드 개발자</a></li>
	            <li><span class="widget-categories-icon"><i class="fa fa-circle-o"></i></span>
	              <a href="#">인공지능 개발자</a></li>
	            <li><span class="widget-categories-icon"><i class="fa fa-circle-o"></i></span>
	              <a href="#">서비스 기획자</a></li>
	            <li> <span class="widget-categories-icon"><i class="fa fa-circle-o"></i></span>
	              <a href="#">데이터 엔지니어</a></li>
	            <li> <span class="widget-categories-icon"><i class="fa fa-circle-o"></i></span>
	              <a href="#">정보 보안 전문가</a></li>
	              <li> <span class="widget-categories-icon"><i class="fa fa-circle-o"></i></span>
	                <a href="#">앱 개발자</a></li>
	          </ul>
	        </div>
	        <!-- 직무선택 끝 --> 
	        
	        <!-- 태그 start -->
	        <div class=" widget widget-tags ">
	          <h2 class=" widget-title" >Tags</h2>
	          <a href="#" >C++</a>
	          <a href="#">JAVA</a>
	          <a href="#">Spring</a>
	          <a href="#">Spring Boot</a>
	          <a href="#">MySQL</a>
	          <a href="#">Oracle</a>
	          <a href="#">React</a>
	          <a href="#">Python</a>
	          <a href="#">JavaScript</a>
	          <a href="#">HTML</a>
	          <a href="#">CSS</a>
	          <a href="#">Vue.js</a>
	        </div>
	        <!-- 태그 close --> 
	      </div>
	      <!-- 위젯 끝 --> 
		  
		  <!-- 공고 구역 -->
	      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
	        <div class="row"> 
	          
	          <!-- 공고 -->
	          <c:choose> 
			  	<c:when test="${not empty list}">
		          <%for (int i =0; i<list.size(); i++){%>
					<div class="row" id="employ-box">
			                
			            <div class="col-lg-8 col-md-6 col-sm-6 col-xs-12">
			              <div class="employ">
			                <h2><a href="#"><%=list.get(i).getJ_title()%></a></h2>
			                <p><%=list.get(i).getJ_content()%></p>
			                  <div class="meta"> <span class="meta-icon"><i class="fa fa-calendar"></i></span>
			                    <span class="meta-date">~<%=list.get(i).getJ_date()%></span> 
			                    <span class="meta-icon"><i class="fa fa-user"></i></span>
			                    <span class="meta-author">By <a href="#">Admin</a></span>
			                    <a href="detailEmploy.do?seq=<%=list.get(i).getJ_seq()%>" class="btn-link">상세페이지</a>
			                  </div>
			                <hr>
			              </div>
			            </div>
			
			            <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
			              <div class="post-img"><a href="#" class="imghover">
			                <img src="<%=list.get(i).getJ_img()%>"  alt="" class="img-responsive"></a>
			              </div>
			            </div>
			
			         </div>
				  <%} %>
				 </c:when>
	             <c:otherwise>
                   <h3>해당하는 공고가 없습니다</h3>
	             </c:otherwise>
	          </c:choose>
		      <!-- 공고 끝 -->
	         
	          <!-- 페이지 이동 -->
	          <div class="col-md-12">
	            <div class="post-block">
	              <div class="row">
	                <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12">
	                  <div class="st-pagination">
	                    <ul class="pagination">
	                      <li><a href="#" aria-label="previous"><span aria-hidden="true">이전</span></a> </li>
	                      <li class="active"><a href="#">1</a></li>
	                      <li><a href="#">2</a></li>
	                      <li><a href="#">3</a></li>
	                      <li> <a href="#" aria-label="Next"><span aria-hidden="true">다음</span></a> </li>
	                    </ul>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	          <!-- 페이지 이동 --> 
	        </div>
	      </div>
		  <!-- 공고 구역 끝 -->
	</div>
  </div>
</div>
<!-- 메인 끝 -->


<!-- footer start -->
<div class="footer">
  <div class="container">
    <div class="row"> 
      <!-- footer-useful links-start -->
      <div class=" col-lg-3 col-md-3 col-sm-3 col-xs-12">
        <div class="footer-widget">
          <h3 class="footer-title">IT_그_JOB_채</h3>
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
      <!-- footer-useful links-close --> 
      <!-- footer-contactinfo-start -->
      <div class=" col-lg-4 col-md-4 col-sm-4 col-xs-12">
        <div class="footer-widget">
          <h3 class="footer-title">Spring B반 기업연계프로젝트</h3>
          <div class="">
            <ul>
              <li> <i class="fa fa-map-marker"></i> 2000 Cambridge Ease template,72764 India</li>
              <li><i class="fa fa-phone"></i>800-123-4567</li>
              <li><i class="fa fa-envelope"></i>info@education.com</li>
            </ul>
          </div>
          <a href="#" class="btn btn-primary btn-sm">request a Course</a></div>
      </div>
      <!-- footer-contactinfo-close --> 
      <!-- footer-about-start -->
      <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12 ">
        <div class="footer-widget">
          <h3 class="footer-title"></h3>
          <p>Velitconsectetur utleo velaoreet in bibendum felirbi iaculis iaculis dpibus ecenas one posuereorci ut euismod tristique. </p>
          <p>lorem ipsum dolr sit amet viedfum lacumdi postern lembneir siot lsedto sistompovelaoreet in bibendum egestacerat tempus magna nonrordueugloattis ultrices diam.</p>
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
          <a href="#"><span><i class="fa fa-linkedin"></i></span></a> </div>
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
<script type="text/javascript" src="/js/employ.js"></script>

</body>
</html>
