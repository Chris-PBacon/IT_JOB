<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<%@page import="com.five.member.entity.EmployVO"%>
<%@page import="java.util.List"%>    
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


	<!-- ?????? ?????? -->
		<%@ include file="/WEB-INF/views/main/header.jsp" %>	  
	<!-- ?????? ??? -->
 
<% List<EmployVO> list = (List<EmployVO>)request.getAttribute("list"); %>
<% List<EmployVO> pList = (List<EmployVO>)request.getAttribute("pList"); %>
<!-- ???????????? -->
<div class="space">
  <div class="container">
    <div class="row">

	  <!-- ???????????? -->
	  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
	  <!-- ?????? ??? -->
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
	        <img src="../images/????????????????????????????????????1.png" alt="...">
	      </div>
	
	      <div class="item">
	        <img src="../images/????????????????????????????????????2.png" alt="...">
	      </div>
	
	      <div class="item">
	        <img src="../images/????????????????????????????????????1.png" alt="...">
	      </div>
	      
	      <div class="item">
	        <img src="../images/????????????????????????????????????2.png" alt="...">
	      </div>
	    </div>
	  
	    <!-- ????????? ?????? -->
	    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
	      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	      <span class="sr-only">Previous</span>
	    </a>
	    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
	      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	      <span class="sr-only">Next</span>
	    </a>
	  </div>
	
	      <!-- ???????????? -->
	      <div class="space-medium">
	        <div class="container">
	            <div class="row">
	                <div class="col-lg-12 col-md-12 col-sm-12 col-lg-12">
	                    <div class="section-title" id="here">
		                    <c:choose> 
			                	<c:when test="${not empty id}">
			                		<h2>${id}??? ?????? ?????????????????????</h2>     			            			
			             		</c:when>             		
			              		<c:otherwise>
			              			<h2>????????? ??? ?????? ??????????????? ??????????????????!</h2>
			              		</c:otherwise>             		
			              	</c:choose>
	                    </div>
	                </div>
	            </div>
				<!-- ?????? ?????? ?????? -->
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
				                          <a href="detailEmploy.do?seq=<%=pList.get(i).getJ_seq()%>" class="btn-link">???????????????</a>
				                        </div>
				                    </div>
				                </div>
							<%} %>   		           			            			
			          	</c:when>
			          	<c:otherwise>
				              <h3>???????????? ????????? ????????????</h3>
				        </c:otherwise>
			         </c:choose>
	            </div>
	        	<!-- ?????? ??? -->             
	        </div>
	      </div>
	      <!-- ???????????? ??? -->
	      
	      <!-- ?????? ?????? ?????? -->
	      <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="widget"> 
			
	        <!-- ?????? -->
	        <div class="widget widget-search">
	          <form action="employSearch#here">
	            <div>
	               <c:choose> 
			          <c:when test="${not empty keyword}"> 	          
		                <input type="text" class="form-control search-form" name="keyword" value=${keyword}>
		                <button type="Submit"><i class="fa fa-search"></i></button>
		              </c:when>
			          <c:otherwise>
				        <input type="text" class="form-control search-form" name="keyword" placeholder="????????? ???????????? ???????????????" required="required">
		                <button type="Submit"><i class="fa fa-search"></i></button>
				      </c:otherwise>
			       </c:choose>
	             </div>
	          </form>
	        </div>
	        <!-- ?????? ??? --> 
	        
	        <!-- ?????????????????? ?????? -->
	        <div class=" widget widget-archives">
	          <h2 class="widget-title">?????? ??????</h2>
	          <ul>
	            <li><span class="widget-categories-icon"><i class="fa fa-circle-o"></i></span>
	              <a href="experience?num=0#here">??????</a></li>
	            <li><span class="widget-categories-icon"><i class="fa fa-circle-o"></i></span>
	              <a href="experience?num=1#here">??????</a></li>
	          </ul>
	        </div>
	        <!-- ?????????????????? ??? --> 
	
	        <!-- ?????? ?????? ??????-->
	        <div class=" widget widget-categories">
	          <h2 class="widget-title">IT ?????? ??????</h2>
	          <ul class="">
	            <li><span class="widget-categories-icon"><i class="fa fa-circle-o"></i></span> 
	              <a href="#">??????????????? ?????????</a></li>
	            <li> <span class="widget-categories-icon"><i class="fa fa-circle-o"></i></span>
	              <a href="#">????????? ?????????</a></li>
	            <li><span class="widget-categories-icon"><i class="fa fa-circle-o"></i></span>
	              <a href="#">???????????? ?????????</a></li>
	            <li><span class="widget-categories-icon"><i class="fa fa-circle-o"></i></span>
	              <a href="#">????????? ?????????</a></li>
	            <li> <span class="widget-categories-icon"><i class="fa fa-circle-o"></i></span>
	              <a href="#">????????? ????????????</a></li>
	            <li> <span class="widget-categories-icon"><i class="fa fa-circle-o"></i></span>
	              <a href="#">?????? ?????? ?????????</a></li>
	              <li> <span class="widget-categories-icon"><i class="fa fa-circle-o"></i></span>
	                <a href="#">??? ?????????</a></li>
	          </ul>
	        </div>
	        <!-- ???????????? ??? --> 
	        
	        <!-- ?????? start -->
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
	        <!-- ?????? close --> 
	      </div>
	      <!-- ?????? ??? --> 
		  
		  <!-- ?????? ?????? -->
	      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
	        <div class="row"> 
	          
	          <!-- ?????? -->
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
			                    <a href="detailEmploy.do?seq=<%=list.get(i).getJ_seq()%>" class="btn-link">???????????????</a>
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
                   <h3>???????????? ????????? ????????????</h3>
	             </c:otherwise>
	          </c:choose>
		      <!-- ?????? ??? -->
	         
	          <!-- ????????? ?????? -->
	          <div class="col-md-12">
	            <div class="post-block">
	              <div class="row">
	                <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12">
	                  <div class="st-pagination">
	                    <ul class="pagination">
	                      <li><a href="#" aria-label="previous"><span aria-hidden="true">??????</span></a> </li>
	                      <li class="active"><a href="#">1</a></li>
	                      <li><a href="#">2</a></li>
	                      <li><a href="#">3</a></li>
	                      <li> <a href="#" aria-label="Next"><span aria-hidden="true">??????</span></a> </li>
	                    </ul>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	          <!-- ????????? ?????? --> 
	        </div>
	      </div>
		  <!-- ?????? ?????? ??? -->
	</div>
  </div>
</div>
<!-- ?????? ??? -->

	<!-- footer ?????? -->
		<%@ include file="/WEB-INF/views/main/footer.jsp" %>	  
	<!-- footer ??? -->
	
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
