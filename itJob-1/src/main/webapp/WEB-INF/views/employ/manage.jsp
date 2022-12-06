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

<link rel="stylesheet" href="/scss/employ.scss">



<style>
  .contact-block {background: url(https://cafeptthumb-phinf.pstatic.net/MjAyMjEwMDJfMjcw/MDAxNjY0Njc0MTYwMjM4.RgG4ehxULb36zyUuDnfs7xufUGcpDK2aa2Pf7IiMC2Qg.sUHbhJjwVWvDxQgdVOXtIPQm0Jqtg_zNhLNxnk9e-dUg.JPEG/%EC%B9%B4%ED%8E%98%EB%B0%B0%EB%84%88_1080-340.jpg) no-repeat center; background-size: cover; margin: 0px; padding-top: 180px; padding-bottom: 180px; position: relative;}
  .contact-block {background: url(../images/박혜원팬카페.jpg) no-repeat center; background-size: cover; margin: 0px; padding-top: 180px; padding-bottom: 180px; position: relative;}

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
  .employ-box{
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
    width: 25%;
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
  
  .container{
    width: 70%;
  }
.col-lg-8{
  width: 75%;
}

.twobtn{
  font-size: 15px;
}
.pagination{
  display: flex;
    flex-direction: column;
    align-items: center;
}

.three-btn{
  position: relative;
    padding: 14px 24px;
    width: 100%;
    height: 72px;
    border-radius: 16px;
    color: #8491a7;
    text-align: right;
    letter-spacing: -1px;
    background: #f4f6fa;
    cursor: pointer;
    border: 0;
    cursor: pointer;
  }



  .three-btn>em {
    position: absolute;
    top: 21px;
    left: 24px;
    font-weight: bold;
    font-size: 0.85em;
  }

  .three-btn>span{
    display: inline-block;
    position: relative;
    font-weight: bold;
    font-size: 2em;
    line-height: 44px;
    vertical-align: top;

  }

  #three-btn{
    display: flex;
    float: right;
    padding: 0 6px;
    width: 104%;
    justify-content: space-evenly;
    box-sizing: border-box;
  }

 .btn-con{
  width: 33.33%;
 margin-left: 15px;
  }

  #result{
    position: relative;
    float: left;
    box-sizing: border-box;
    word-break: break-all;

    margin-top: 32px;
    padding: 8px 32px;
    width: 100%;
    border-radius: 8px;
    background: #f4f6fa;
    

  }
  .m-lo{

    list-style: none;

  }

  .m-li{
    border-top: 0;
    padding: 10px 0;
  }
  
  .date{
    float: left;
    width: 143px;
    color: #8491a7;
    font-size: 12px;
    line-height: 20px;
    letter-spacing: -.5px;
  }
  .desc{
    overflow: hidden;
    display: block;
    color: #8491a7;
    font-size: 13px;
    line-height: 20px;
    letter-spacing: -1px;
  }
  .desc>strong{
    display: inline-block;
    padding-right: 20px;
    color: #373f57;
    vertical-align: top;
  }
  .desc>span{
    display: inline-block;
    padding-right: 8px;
    vertical-align: top;

    color: #8491a7;
    font-size: 14px;
    line-height: 20px;
    letter-spacing: -1px;

  }


</style>

</head>
<body>

<div>
	<!-- 헤더 시작 -->
		<%@ include file="/WEB-INF/views/main/header.jsp" %>	  
	<!-- 헤더 끝 -->



<!-- 메인시작 -->
<div class="space">
  <div class="container" >
    <div class="row">




  <!-- 베너광고 -->
  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
      <li data-target="#carousel-example-generic" data-slide-to="1"></li>
      <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    </ol>
  
    <!-- slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="../images/박혜원팬카페.jpg" alt="...">
      </div>

      <div class="item">
        <img src="../images/제목킹받네.jpg" alt="...">
      </div>

      <div class="item">
        <img src="../images/박혜원.jpg" alt="...">
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
        <div class="container" style="width: 100%;">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-lg-12">
                    <div class="section-title">
                        <h1>지원 내역</h1>
                    </div>
                </div>
            </div>

            <!--버튼 3개-->
            <div class="row" id="three-btn" >
                
            <div class="btn-con">
              <button class="three-btn">
                <em>지원완료</em>
                <span>0</span>
              </button>
            </div>

            <div class="btn-con">
              <button class="three-btn">
                <em>전형 진행중</em>
                <span>0</span>
              </button>
            </div>

            <div class="btn-con">
              <button class="three-btn">
                <em>최종발표</em>
                <span>0</span>
              </button>
            </div>

         

            </div>
        </div>
      </div>
      
      <!-- 내부 -->
      <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="widget"> 

      <!-- 위젯 구역 시작 -->
        <!-- 검색 -->
        <div class=" widget widget-search">
          <form>
            <div class="">
              <input type="text" class="form-control search-form" value="" placeholder= "기업명 검색">
               <button type="Submit"><i class="fa fa-search"></i></button>
             </div>
          </form>
        </div>
        <!-- 검색 끝 --> 


        <!-- 직무 선택 시작-->
        <div class=" widget widget-categories">
          <h2 class="widget-title">채용</h2>
          <ul class="">
            <li class="active"><span class="widget-categories-icon"><i class="fa fa-circle-o"></i></span> 
              <a href="#">지원 내역</a></li>
            <li> <span class="widget-categories-icon"><i class="fa fa-circle-o"></i></span>
              <a href="#">받은 제안</a></li>
            <li><span class="widget-categories-icon"><i class="fa fa-circle-o"></i></span>
              <a href="#">스크랩 / 관심기업 </a></li>
            <li><span class="widget-categories-icon"><i class="fa fa-circle-o"></i></span>
              <a href="#">이력서 수정</a></li>
            
          </ul>
        </div>
        <!-- 직무선택 끝 --> 
        
       
      </div>
      <!-- 위젯 끝 --> 

      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
        <div class="row"> 
          
          <!-- 공고 1 -->
          <div class="row" class="employ-box">
                
            <div class="col-lg-8 col-md-6 col-sm-6 col-xs-12">
              <div class="employ">
                <h2><a href="#">네이버(주)</a></h2>
                <p>[네이버앱서비스] 콘텐츠 기획 담당자 모집 (체험형)</p>
                  <div class="meta"> <span class="meta-icon"><i class="fa fa-calendar"></i></span>
                    <span class="meta-date">~2022.12.30</span> 
                    <span class="meta-icon"><i class="fa fa-user"></i></span>
                    <span class="meta-author">By <a href="#"> Admin</a></span>
                    <a href="#" class="btn-link">상세페이지</a>
                  </div>

                  <div id="result" name="result" style="display: none;">
                    <ol class="m-ol">
                      <li class="m-li">
                        <span class="date">2022.11.28 15:32:09</span>
                        
                        <span class="desc">
                          <strong>지원취소</strong>
                          <span>
                            지원 취소 완료
                          </span>
                        </span>
                      </li>
                      <li>
                        <span class="date">2022.11.29 15:32:09</span>
                        
                        <span class="desc">
                          <strong>지원완료</strong>
                          <span>
                            지원서류 이력서 (자기소개서) / 포트폴리오
                          </span>
                        </span>
                      </li>

                    </ol>
                </div>

                <hr>

              </div>
            </div>

           
              <!--버튼 2개-->
                <div class="st-pagination">
                  <ul class="pagination">
                    <li><a style="cursor: pointer;" aria-label="previous" id="mInfo"><span aria-hidden="true" class="twobtn" >상세 보기</span></a> </li>
                    <br>
                    <li> <a href="#" aria-label="Next" ><span aria-hidden="true" class="twobtn">지원 취소</span></a> </li>
                  </ul>
                </div>
              
              
            </div>

          </div>
          <!-- 공고 1 -->

         

          <!-- 공고 2 -->
          <div class="row" class="employ-box">
                
            <div class="col-lg-8 col-md-6 col-sm-6 col-xs-12">
              <div class="employ">
                <h2><a href="#">(주)카카오</a></h2>
                <p>[KAKAO] 카카오 기술 직군 모집</p>
                <div class="meta"> 
                  <span class="meta-icon"><i class="fa fa-calendar"></i></span>
                  <span class="meta-date">채용시 마감</span> 
                  <span class="meta-icon"><i class="fa fa-user"></i></span>
                  <span class="meta-author">By <a href="#"> Admin</a></span> 
                  <a href="#" class="btn-link">상세페이지</a>
                </div>
                <hr>
              </div>
            </div>

            <!--버튼 2개-->
            <div class="st-pagination">
              <ul class="pagination">
                <li><a href="#" aria-label="previous" ><span aria-hidden="true" class="twobtn">상세 보기</span></a> </li>
                <br>
                <li> <a href="#" aria-label="Next" ><span aria-hidden="true" class="twobtn">지원 취소</span></a> </li>
              </ul>
            </div>

          </div>
          <!-- 공고 2 --> 

          <!-- 공고 3 -->
          <div class="row" class="employ-box">
                
            <div class="col-lg-8 col-md-6 col-sm-6 col-xs-12">
              <div class="employ">
                <h2><a href="#">라인플러스(주)</a></h2>
                <p>[LINE] Social Service Contents Manager</p>
                <div class="meta"> <span class="meta-icon"><i class="fa fa-calendar"></i></span>
                  <span class="meta-date">~ 2022.12.30</span> 
                  <span class="meta-icon"><i class="fa fa-user"></i></span>
                  <span class="meta-author">By <a href="#"> Admin</a></span>
                  <a href="#" class="btn-link">상세페이지</a> 
                </div>
                <hr>
              </div>
            </div>

            <!--버튼 2개-->
            <div class="st-pagination">
              <ul class="pagination">
                <li><a href="#" aria-label="previous" ><span aria-hidden="true" class="twobtn">상세 보기</span></a> </li>
                <br>
                <li> <a href="#" aria-label="Next" ><span aria-hidden="true" class="twobtn">지원 취소</span></a> </li>
              </ul>
            </div>

          </div>
          <!-- 공고 3 --> 

          <!-- 공고 4 -->
          <div class="row" class="employ-box">
                
            <div class="col-lg-8 col-md-6 col-sm-6 col-xs-12">
              <div class="employ">
                <h2><a href="#">쿠팡(주)</a></h2>
                <p>[쿠팡] Coupang Flex 데이터 운영 관리자</p>
                <div class="meta"> 
                  <span class="meta-icon"><i class="fa fa-calendar"></i></span>
                  <span class="meta-date">~ 2022.12.30</span> 
                  <span class="meta-icon"><i class="fa fa-user"></i></span>
                  <span class="meta-author">By <a href="#"> Admin</a></span>
                  <a href="#" class="btn-link">상세페이지</a> 
                </div>
                
                <hr>
              </div>
            </div>

            <!--버튼 2개-->
            <div class="st-pagination">
              <ul class="pagination">
                <li><a href="#" aria-label="previous" ><span aria-hidden="true" class="twobtn">상세 보기</span></a> </li>
                <br>
                <li> <a href="#" aria-label="Next" ><span aria-hidden="true" class="twobtn">지원 취소</span></a> </li>
              </ul>
            </div>

          </div>
          <!-- 공고 4 --> 

          <!-- 공고 5 -->
          <div class="row" class="employ-box">
                
            <div class="col-lg-8 col-md-6 col-sm-6 col-xs-12">
              <div class="employ">
                <h2><a href="#">(주)우아한형제들</a></h2>
                <p>부문별 경력/신입 인재영입</p>
                <div class="meta"> 
                  <span class="meta-icon"><i class="fa fa-calendar"></i></span>
                  <span class="meta-date">~2022.12.30 </span> 
                  <span class="meta-icon"><i class="fa fa-user"></i></span>
                  <span class="meta-author">By <a href="#"> Admin</a></span>
                  <a href="#" class="btn-link">상세페이지</a> 
                </div>
                
                <hr>
              </div>
            </div>

            <!--버튼 2개-->
            <div class="st-pagination">
              <ul class="pagination">
                <li><a href="#" aria-label="previous" ><span aria-hidden="true" class="twobtn">상세 보기</span></a> </li>
                <br>
                <li> <a href="#" aria-label="Next" ><span aria-hidden="true" class="twobtn">지원 취소</span></a> </li>
              </ul>
            </div>

          </div>
          <!-- 공고 5 --> 

          <!-- 공고 6 -->
          <div class="row" class="employ-box">
                
                <div class="col-lg-8 col-md-6 col-sm-6 col-xs-12">
                  <div class="employ">
                    <h2><a href="#">(주)당근마켓</a></h2>
                    <p>DBA (Database Administration) - 당근페이</p>
                    <div class="meta"> 
                      <span class="meta-icon"><i class="fa fa-calendar"></i></span>
                      <span class="meta-date">~ 2022.12.30</span> 
                      <span class="meta-icon"><i class="fa fa-user"></i></span>
                      <span class="meta-author">By <a href="#"> Admin</a></span>
                      <a href="#" class="btn-link">상세페이지</a> 
                    </div>
                    <hr>
                  </div>
                </div>

                <!--버튼 2개-->
                <div class="st-pagination">
                  <ul class="pagination">
                    <li><a href="#" aria-label="previous" ><span aria-hidden="true" class="twobtn">상세 보기</span></a> </li>
                    <br>
                    <li> <a href="#" aria-label="Next" ><span aria-hidden="true" class="twobtn">지원 취소</span></a> </li>
                  </ul>
                </div>

              </div>
          <!-- 공고 6 --> 
          
    

        </div>

      </div>
      <!-- 페이지 이동 -->
      <div class="col-md-12">
        <div class="post-block">
          <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12">
              <div class="st-pagination">
                <ul class="pagination" style="display: flex;
                flex-direction: row;
                align-items: center;
                justify-content: center;">
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
<script type="text/javascript" src="/js/employ.js"></script>

<script type="text/javascript" src="/js/manage.js"></script>

</body>
</html>
    