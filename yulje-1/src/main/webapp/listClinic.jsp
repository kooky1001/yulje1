<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

/*사이드바 start*/
.side_ul{
  float: right;
  list-style-type: none;
  margin: 0px;
  padding: 0px;
  padding-top: 20px;
  width: 200px;
  margin-right: 50px;
  color: #5D5D5D;
}

.side_ul > li {
    display: block;
    width: 200px;
    line-height: 50px;
    color: #111;
    font-size: 15px;
    border: 1px solid #ddd;
    font-weight: bold;
    font-family: 'noto-sans';
    text-align: center;
    color: #5D5D5D;
    
    
}

.leftTop {
    color: #94CCC4;	/* 각 페이지 색으로 지정*/
    font-family: 'noto-sans';
    text-align: center;
    margin-bottom: 10px;
}

.side_ul li a:hover,
.side_ul li a:focus {
	background-color:#94CCC4;	/* 각 페이지 색으로 지정*/
	width: 200px;
    line-height: 50px;
    display: block;
    color: #5D5D5D;
}   

.side_ul li a{
	text-decoration:none;
	color: #5D5D5D;
}

/*사이드바 end*/

   * {
     box-sizing: border-box;
   }
   /* 제목 부분 */
	#nameDiv{
	
	clear:both;
	justify-content: center; 
	display: flex; 
	display:inline-block;
	margin:5px 0 5px 0;
	width:886px; 
   	border-left: 5px solid #CBE2B8;
   	padding-left: 40px;
	}
	#name{
		margin:5px 0 5px 0;
		padding:0px;
		font-size: 30px;
	}
	#nameDiv h1{
	vertical-align: 25px;
	}
	/*제목부분 끝*/
	
	/* 기록수와 안내부분 */
   .main_top {
   	  clear:both; 
      background-color: #F6F7DD;
      justify-content: center;
      display: flex; 
      display:inline-block;  
      margin-top:20px;
      width:960px;  

   }
   #image{
   	float: left;
   	margin: 20px 0px 10px 20px;
   }
   #member{
   float: left;
   margin: 20px 0px 0px 20px;
   border-bottom: 3px solid #CBE2B8;
   }
   #count h4{
   display: inline;
   }
   #announce{
   	float: left;
   	margin: 10px 0 20px 40px;
   }
  /* 기록수와 안내부분 끝 */
  
  /* 진료기록 목록 */
   .main_middle {
   	  clear: both;
      justify-content: center;
       
      margin-bottom: 30px;
          
   }
   #th{ 
   	margin-top:20px;
   	border-top: solid 3px #CBE2B8;
   	border-bottom: solid 3px #CBE2B8;
    padding: 10px 0px 10px 0px;
    height: 50px;
   }
   #th h4{
   	float: left;
   	margin: 0px 80px 0px 0px;
   	padding:0px 0px 0px 50px;
   }
   
   #ul{
   border-top: 10px;
   clear: both;
   align-items: center;
   
   }
   #ul ul{
    padding:0px;
    margin:0px;
   }
   #ul li{
   	list-style: none;
   	margin:10px 0 10px 0;
   	padding: 0 0 10px 0;
   	font-size:16px;
   	font-weight:normal;
   	border-bottom: dotted 1px #F6F7DD; 
   }
   
   
   #ul li span{
   	margin: 0px 30px 0px 18px;
   	padding:0px 40px 0px 10px;
   	
   }
   
   
    /* 진료기록 목록 끝 */
    
    
    /* 진료기록 리스트 태그 */
     .main_under {
      clear:both;
      justify-content: center;
      display: flex; 
      display:inline;  
      background-color: #F6F7DD;
      margin-top:20px;  

   }
    
    .next{
		text-align:center;
    	height: 40px;
    	padding:0px;
    	
    }
    .next div{
    margin:0px;
    float:left;
    margin:7px 5px 5px 365px;
    }
       
    
   /* 다음(이전) 버튼 */
    .btn_next{
     
     text-align: center;
	 background-color: #CBE2B8;
	 border: solid 3px #CBE2B8;
	 width: 30px;
     height: 30px;
     padding: 0 8px 0 5px;
     margin: 0px 3px 5px 0px;
     color: #fff;
     font-size: 16px;
     letter-spacing: -.8px;
     line-height: 1.5;
	}
	
	/* 버튼이 눌렸을때*/
	.btn_push{
	background-color: white;
	color:#CBE2B8;
	}
    /**/
   body {
     margin:0;
  	font-family: Arial, Helvetica, sans-serif;
   
   }
   
   /* Style the header */
   .header {
     /*background-color: #f1f1f1;
     padding: 30px;
     text-align: center;
     font-size: 35px;
     */
   }
   

/* Create three unequal columns that floats next to each other */
.column {
  float: left;
  padding: 10px;
  height: 1000px;
}

/* Left and right column */
.column.side {
   width: 300px;
}

/* Middle column */
.column.middle {
	 width: 1000px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Style the footer */
.footer {
  background-color: #f1f1f1;
  padding: 10px;
  text-align: center;
  height: 20%;
}
   

   #column_side_left {
   /*width: 160px;
   padding: 20px;
   margin-right: 20px;
   border: 1px solid #bcbcbc;*/
   }
   
   #column_side_right {
    /*width: 160px;
   padding: 20px;
    margin-bottom: 20px;
 	 border: 1px solid #bcbcbc;*/
}
   
  

   .row{
    width:1600px;
	margin:0 auto;
	padding-top: 140px;
	position: relative;
   }
   /* Clear floats after the columns */
   .row:after {
   
     content: "";
     display: table;
     clear: both;
     
   }
   
   /* Style the footer */
   .footer {
     background-color: #f1f1f1;
     padding: 10px;
     text-align: center;
   }
   
   /* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
   @media (max-width: 600px) {
     .column.side, .column.middle {
       width: 100%;
     }  
     
   }
   
 
/*footer start*/
#footer .family-site dd li {
    margin-bottom: 12px;
}


#footer .family-site {
    float: left;
    width: 250px;
    height: 184px;
    padding: 15px 28px;
    border-left: 1px solid #4e5157;
}

#hos_ul > li {
    list-style: none;
    display: list-item;
    text-align: -webkit-match-parent;
    
}

.clearfix > li {
    list-style: none;

}

#hos_ul {
    list-style-type: disc;
    display: block;
    padding: 0px;
    font-size: 13px;
    text-align: left;
}

#footer .btn-home {
    position: absolute;
   
    font-size: 11px;
    text-align: center;
    text-decoration:none;
    display: block;
    padding-top: 13px;

}

*, *:before, *:after {
    margin: 0px;
    padding: 0px;
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    -o-box-sizing: border-box;
}
.inner > a {
    color: #333;
    text-decoration: none;
    font-family: "NotoSans-Regular";
    vertical-align: middle;
}


.inner > a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

#footer {
    padding: 35px 0 88px 0;
   /* background: #7A9AA0;*/
    font-size: 16px;
    color: #5D5D5D;
    text-align: center;
}

#footer .info {
    float: left;
    width: 700px;
    height: 184px;
    padding-top: 15px;
}

#footer .tel-num {
    float: left;
    width: 295px;
    height: 184px;
    padding-top: 15px;
    border-left: 1px solid #4e5157;
    text-align: center;
}

#footer .family-site {
    float: left;
    width: 305px;
    height: 184px;
    padding: 15px 28px;
    border-left: 1px solid #4e5157;
}

#footer a{
	text-decoration:none;
	color: #5D5D5D;
	text-align:center;
}

.inner {
    max-width: 1300px;
    margin: 0 auto;
    position: relative;
}



footer{
    display: block\9;
    margin: 0\9;
    padding: 0\9;
    display: block;
}

.btn-top{
	border: 1px solid #ccc;
}

/*footer end*/
</style>
<link rel="stylesheet" href="newfooter.css">
<script src="https://kit.fontawesome.com/eef195c997.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="header.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$(document).on("mouseenter",".btn_next",function(){
		$(this).addClass("btn_push");
	})
	$(document).on("mouseleave",".btn_next",function(){
		$(this).removeClass("btn_push");
	})
});
</script>
</head>
<body>

   
 <!-- Header Start -->
     <jsp:include page="/header.jsp"></jsp:include>
<!-- 	Header End -->
   
   <div class="row">
   
     	<div class="column side" id="column_side_left">
     		<!-- sidebar -->
  	<div>
  		<ul class="side_ul">
  		<h1 style="font-size: 23px;" class="leftTop">진료기록 확인</h1>		<!-- 메뉴 이름 (페이지마다 다르게 지정) -->
		  <li class="side_li"><a href="http://localhost:8080/haha/Reservation.html">진료예약</a></li>			<!-- 사이드 메뉴 이름 (페이지마다 다르게 지정) -->
		  <li class="side_li"><a href="">진료예약 확인</a></li>
		  <li class="side_li"><a href="http://localhost:8080/haha/listDept6.jsp">진료과</a></li>
		  <li class="side_li"><a href="">문의게시판</a></li>
		  

		</ul>
  	</div>
  	
  	<!-- //sidebar -->
     	
     	</div>
     	<!-- 메인부분 -->
  		<div class="column middle">
  			<div id="nameDiv">
     		<span><h2 id="name">진료 기록</h2></span>
     		</div>
			<div class="main_top">
	        	<div id="image"><img src='./image/doc.jpg' class='icon'></div>
	        	<div id="member"><h3>김태평님 | <span id="count">[<h4 style="color: pink;"> 4 </h4>]</span>건의 진료기록이 있습니다</h3></div>
	        	<div id="announce"><ul>
	        	<li>진료기록확인은 최근 1년까지 조회가 가능합니다.</li>
	        	<li>단, 그 이전의 기록을 확인하실 경우 직접 방문, 전화로 문의주세요</li>
	        	<li>진료기록 문의: 1577 - 4488</li>
	        	</ul></div>
	        </div>
	        
	        <div class="main_middle">
	         	<div id="th">
	         		<span><h4>진료일</h4> <h4>환자명</h4> <h4>진료과</h4> <h4>주치의</h4> <h4>상세</h4></span>         		
	         	</div>
	         	<div id="ul">
	         		<li><span>2020 / 10 / 23</span><span>김태평 </span> <span> 건강 장수 과 </span> <span> 추승연 </span> <span> 아주 건강 </span></li>
	         		<li><span>2020 / 10 / 23</span><span>김태평 </span> <span> 건강 장수 과 </span> <span> 추승연 </span> <span> 아주 건강 </span></li>
	         		<li><span>2020 / 10 / 23</span><span>김태평 </span> <span> 건강 장수 과 </span> <span> 추승연 </span> <span> 아주 건강 </span></li>
	         		<li><span>2020 / 10 / 23</span><span>김태평 </span> <span> 건강 장수 과 </span> <span> 추승연 </span> <span> 아주 건강 </span></li>	
	         		</ul>
	         	</div>
	      </div>
	      <div class="main_under">
	      	<div class="next">
	      		<div id="next_span"><button class="btn_next">&lt;</button><button class="btn_next">1</button><button class="btn_next">2</button><button class="btn_next">&gt;</button></div>
	      	</div>
	      </div>
  	</div>		
  	<div class="column side" id="column_side_right"> </div>
  </div>
   <!-- footer -->
   <footer id="footer">
		<div class="inner">
			<div class="info">
				<ul class="footer-link">
					<li><a href="#" onclick="ajaxPopup('.ajaxPopup', '', '/ilsan/etc/privacy_policy.asp', this, '.popup-privacyList'); return false;"><span class="white fs14">개인정보처리방침</span></a></li>
					<li class="link-policy"><a href="#popupVideoPolicy" onclick="ajaxPopup('.ajaxPopup', '', '/ilsan/etc/video_policy.asp', this,'.popup-videoPolicy'); return false;">영상정보처리기기운영방침</a></li>
					<li><a href="" onclick="ajaxPopup('.ajaxPopup', '', this.href, this,'.popup-popRights'); return false;">환자권리장전</a></li>
					<!--<li><a href="#">사이트맵</a></li>-->
				</ul>
				<div class="copyright">
					<address>04108 서울 마포구 백범로 23 구프라자 3층</address>
					<span>HELLJAVA COPYRIGHT (C)2018 YULJE UNIVERSITY HOSPITAL.ALL RIGHTS RESERVED.</span>
				</div>
				<div class="etc">
					<i class="ico ico-certify">보건복지부 인증 의료기관</i>
					<div class="sns-link">
						<a href="" target="_blank" title="새창"><i class="">facebook</i></a>
						<a href="" target="_blank" title="새창"><i class="">blog</i></a>
                        <a href="" target="_blank" title="새창"><i class="">YouTube</i></a>
					</div>
				</div>
			</div>
			<div class="tel-num">
				<dl>
					<dt>대표전화(안내)</dt>
					<dd>02-707-1480</dd>
				</dl>
			</div>
			<div class="family-site">
				<dl>
					<dt><em>FAMILY SITE</em></dt>
					<dd>
						<ul id="hos_ul">
							<li><a href="">율제중앙의료원</a></li>
							<li><a href="">서울대병원</a></li>
							<li><a href="">일산백병원</a></li>
							<li><a href="" target="_blank" title="새창열림">율제대학교</a></li>
						</ul>
					</dd>
				</dl>

			</div>
		</div>
		<!-- footer_menu -->
		<div class="footer-menu">
			<div class="inner">
				<ul class="clearfix">
					<li><a href="">예약/조회/발급</a></li>
					<li><a href="" onclick="open(this.href, '_swin_', 'width=1120,height=800,scrollbars,resizable');return false;"></i>의료진/의료과</a></li>
					<li><a href="">이용안내</a></li>
					<li><a href="">건강정보</a></li>
					<li><a href="">병원소개</a></li>
					<li><a href="">전화번호안내</a></li>
					<li><a href="">오시는길</a></li>
				</ul>
				<a href="" class="btn-home">HOME</a>
				<button type="button" class="btn-top">TOP</button>
			</div>
		</div>
		<!--// footer_menu -->
	</footer>
	
	<!-- //footer -->
   

</body>
</html>