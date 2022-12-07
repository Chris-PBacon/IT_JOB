<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>



<!--헤드부분 시작-->
    <div class="header-wrapper" style="z-index: 111;">
        <div class="container">
            <div class="row" style="display: flex; align-items: center; width: 100% ">
                <div class="col-lg-2 col-sm-4 col-md-2 col-xs-12">

                    <!--로고 이미지 부분-->
                    <div class="logo" style="width: 180px;">
                        <a href="main.do"><img src="/images/logo.png" class="img-responsive" alt="" style="width: 180px; height: 60px;"></a>
                    </div>
                </div>
                <div class="col-lg-8 col-md-10 col-sm-8 col-xs-12" style="justify-content: center; display: flex; width: 60%;">
                    <div class="navigation-wrapper" style="display: flex; justify-content: center;">

                        <!--메뉴 시작-->
                        <div id="navigation">
                            <ul>
                                <li class="active"><a href="main.do" title="">Home</a></li>
                              

                                 <li class="has-sub"><a href="lecture.do" title="">강의</a>
                              		<ul>
                                      <li><a href="lecture.do" title="">전체 강의</a></li>
                                      <li><a href="myLecture.do" title="">내 강의 </a></li>
                                      <li><a href="enterBasket.do" title="">강의 장바구니 </a></li>
                                  </ul>
                              
                              </li>


                                <li class="has-sub"><a href="#" title="">채용</a>
                                    <ul>
                                        <li><a href="employ.do" title="">채용정보</a></li>
                                        <li><a href="manage.do" title="">구직관리</a></li>
                                        <li><a href="resumeShow.do" title="">이력서</a></li>
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
    					justify-content: space-around;
         	
                	" >
                	<span style="margin-right: 30px;">${id} 님 환영합니다!</span>
                		<a href="logOutNE.do" class="btn btn-primary">로그아웃</a> 
                		
                		<c:choose>
		                	<c:when test="${num eq '1'}">
		                		<a href="updateN.do?id=${id}" class="btn btn-primary">회원정보수정</a>  
		                	</c:when> 
		                	<c:otherwise>
		                		<a href="updateE.do?id=${id}" class="btn btn-primary">회원정보수정</a> 
		                	</c:otherwise>
		                	   
	                	</c:choose>
	                	     			
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












</html>