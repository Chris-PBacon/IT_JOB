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
    <meta name="keywords" content="seo,free website template, free responsive website template, seo marketing, search engine optimization, web analytics">
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
    <link href="/css/owl.carousel.min.css" rel="stylesheet">
    <link href="/css/owl.theme.default.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


    <!--구글 아이콘 링크-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />




        <style>

            .container{

            display: flex;

            justify-content: center;

            }
            
            /*아이콘 배열*/
            .service-icon{

                margin: 20px;
            }

            .service-block{
                text-align: center;
            }


             /*구글 아이콘 스타일*/
            .material-symbols-outlined {
                font-variation-settings:
                'FILL' 0,
                'wght' 500,
                'GRAD' 200,
                'opsz' 500
            }

            h4{
                font-weight: 550;
            }


            /*기업 추천 글씨 부분*/
            .team-meta{

                font-size: 15px;
              
            }

            /*원형 사진*/
            .img-circle{
                width: 80%;
            }

        
       
        </style>

</head>

<body>

	<!-- 헤더 시작 -->
		<%@ include file="/WEB-INF/views/main/header.jsp" %>  
	<!-- 헤더 끝 -->

	



    <!-- slider-start -->
    
    <div class="slider">
        <div class="owl-carousel owl-theme">
            <div class="item"> <img src="/images/1.png" alt="">
                <div class="container">
                    <div class="row">
                        <!-- <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
                            <div class="slider-captions">


                                <a href="about.html" class="btn btn-default btn-lg hidden-sm hidden-xs"> view Courses</a> </div>
                        </div> -->
                    </div>
                </div>
            </div>
            <div class="item"><img src="/images/2.png" alt="">
                <div class="container">
                    <div class="row">
                        <!-- <div class="col-lg-7 col-md-7 col-sm-12  col-xs-12">
                            <div class="slider-captions">
                              
                                <a href="about.html" class="btn btn-default btn-lg hidden-sm hidden-xs"> Request A Course </a> </div>
                        </div> -->
                    </div>
                </div>
            </div>
            <div class="item"><img src="/images/3.png" alt="">
                <div class="container">
                    <div class="row">
                        <!-- <div class="col-lg-7 col-md-7 col-sm-12  col-xs-12">
                            <div class="slider-captions">
                               
                                <a href="about.html" class="btn btn-default btn-lg  hidden-sm hidden-xs "> view Courses</a> </div>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- slider-close -->


    <!-- 중간 파란 배너-->
    <div class="space-small bg-default">
        <div class="container">
            <div class="row" style="width: 850px;">
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-6">
                    <div class="counter-block">
                        <div class="counter-content">
                            <h1 class="counter-title">275,842<sup>+</sup></h1>
                            <span class="counter-text">누적 수강생</span> </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-6">
                    <div class="counter-block">
                        <div class="counter-content">
                            <h1 class="counter-title">327<sup>+</sup></h1>
                            <span class="counter-text">채용 추천 파트너사</span> </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-6">
                    <div class="counter-block">
                        <div class="counter-content">
                            <h1 class="counter-title">9,382<sup>+</sup></h1>
                            <span class="counter-text">취업 성공 수강생</span> </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 col-xs-6">
                    <div class="counter-block">
                        <div class="counter-content">
                            <h1 class="counter-title">98%<sup>+</sup></h1>
                            <span class="counter-text">수강생 만족도</span> </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- counter-close-->


    <!-- 직무 아이콘 시작-->
    <div class="space-medium">
        <div class="container">


            <!-- <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-lg-12">
                    <div class="section-title">
                        <h1>직무 소개</h1>
                    </div>
                </div>
            </div> -->


            <div class="service-block ">
                <div class="service-icon"><i class="icon-switches"></i></div>

                    <div class="service-content">
                        <h4><a href="#" class="title">프론트 엔드</a></h4>
                    </div>
            </div>
            
            <div class="service-block ">
                <div class="service-icon"><i class="icon-rate"></i></div>

                    <div class="service-content">
                        <h4><a href="#" class="title">백 엔드</a></h4>
                    </div>
            </div>
            
            <div class="service-block ">
                <div class="service-icon"><i class="icon-social-network"></i></div>

                    <div class="service-content">
                        <h4><a href="#" class="title">앱 개발자</a></h4>
                    </div>
            </div>
            
            <div class="service-block ">
                <div class="service-icon"><i class="icon-streaming"></i></div>

                    <div class="service-content">
                        <h4><a href="#" class="title">정보 보안 전문가</a></h4>
                    </div>
            </div>
            
            <div class="service-block ">
                <div class="service-icon"><i class="icon-social-network-1"></i></div>

                    <div class="service-content">
                        <h4><a href="#" class="title">인공지능/머신러닝</a></h4>
                    </div>
            </div>
            
            <div class="service-block ">
                <div class="service-icon"><i class="icon-devices"></i></div>

                    <div class="service-content">
                        <h4><a href="#" class="title">데이터 엔지니어</a></h4>
                    </div>
            </div>
            
            <div class="service-block ">
                <div class="service-icon"><i class="icon-switches"></i></div>

                    <div class="service-content">
                        <h4><a href="#" class="title">프로젝트 매니저</a></h4>
                    </div>
            </div>




            <!-- <div class="row"> -->
                <!-- cources-start-->
                <!-- <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                    <div class="service-block ">

                       

                    </div>
                </div> -->
                <!-- cources-close-->


                <!-- cources-start-->
                <!-- <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                    <div class="service-block">
                        <div class="service-icon"><i class="icon-social-network"></i></div>
                        

                    </div>
                </div> -->
                <!-- cources-close-->


                <!-- cources-start-->
                <!-- <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                    <div class="service-block">
                        <div class="service-icon"><i class="icon-social-network"></i></div>
                       

                    </div>
                </div> -->
                <!-- cources-close-->
            <!-- </div> -->


            <!-- cources-close-->
        </div>


    </div>
    <!--직무 아이콘 끝-->

    



    <div class="space-medium bg-default pdb150">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" style="width: 500px;">
                    <div class="about-section">
                        <h1 class="text-white" style="font-weight: 500;">IT 기업 추천</h1>
                    
                </div>

            
                </div>

            </div>
           

        </div>
    </div>
    
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="team-section">
                    <div class="team-img">
                        <a href="#"><img src="/images/naver.jpg" alt="" class="img-circle"></a>
                    </div>
                    <div class="team-content mt20">
                        <h3 class="team-title">네이버</h3>
                        <span class="team-meta">백엔드 개발자 모집</span>
                        <p>2022/11/01-2022/11/30</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="team-section">
                    <div class="team-img ">
                        <a href="#"><img src="/images/kakao.png" alt="" class="img-circle"></a>
                    </div>
                    <div class="team-content mt20">
                        <h3 class="team-title">카카오</h3>
                        <span class="team-meta">카카오 디자이너 직군 모집</span>
                        <p>2022/11/01-2022/11/30</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="team-section">
                    <div class="team-img ">
                        <a href="#"><img src="/images/line.png" alt="" class="img-circle"></a>
                    </div>
                    <div class="team-content mt20">
                        <h3 class="team-title">LINE</h3>
                        <span class="team-meta">프로젝트 매니저 모집</span>
                        <p>2022/11/01-2022/11/30</p>
                    </div>
                        
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="team-section">
                    <div class="team-img ">
                        <a href="#"><img src="/images/bang.png" alt="" class="img-circle"></a>
                    </div>
                    <div class="team-content mt20">
                        <h3 class="team-title">직방</h3>
                        <span class="team-meta">유지보수 엔지니어 모집</span>
                        <p>2022/11/01-2022/11/30</p>
                    </div>
                        
                </div>
            </div>
        </div>
    </div>

    <!-- team-close -->
    
	<!-- footer 시작 -->
		<%@ include file="/WEB-INF/views/main/footer.jsp" %>	  
	<!-- footer 끝 --

   
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/js/jquery.min.js" type="text/javascript"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="/js/menumaker.js" type="text/javascript"></script>
    <script type="text/javascript" src="/js/jquery.sticky.js"></script>
    <script type="text/javascript" src="/js/sticky-header.js"></script>
    <script type="text/javascript" src="/js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="/js/slider.js"></script>
</body>

</html>
