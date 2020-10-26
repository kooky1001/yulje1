<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="newfooter.css">
<link rel="stylesheet" href="header.css">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

   * {
     box-sizing: border-box;
     font-family: "맑은 고딕";
   }

/* 로그인 윗 박스 */
   .login_top {
      justify-content: center;
      display: flex;
      margin-top: 10px; 
   }

/* 로그인 윗 박스 안 */   
   #login_top1 {
      width: 650px;
      height: 400px;
      margin: 10px;
      text-align: center;
   }
 
 
/* 로그인  밑 박스 */    
   .login_under {
      justify-content: center;
      display: flex;      
   }   

/* 로그인  밑 박스안 */    
   #login_under1 {   
      border: 1px solid #ccc;
      width: 200px;
      height: 150px;
      margin: 10px; 
      text-align: center;
      padding-top: 30px;
      border-top-color: #CBE2B8;
   	  border-top-width: 5px;
   }
   
   #login_under2 {   
      border: 1px solid #ccc;
      width: 200px;
      height: 150px;
      margin: 10px; 
      text-align: center;
      padding-top: 30px;
      border-top-color: #CBE2B8;
  	  border-top-width: 5px;
   }
   
   #login_under3 {   
      border: 1px solid #ccc;
      width: 200px;
      height: 150px;
      margin: 10px; 
      text-align: center;
      padding-top: 30px;
      border-top-color: #CBE2B8;
   	  border-top-width: 5px;
          
   }
   
/* 회원로그인 text 박스 크기 */    
   .text{
   	width:200px;
  	height: 25px;
    font-size: 16px;
   }
   
/* 공백주기 */    
   #enter01{
	border: 1px solid #ffffff;
	height: 102px;
	visibility: hidden;
	}
	
   #enter02{
	border: 1px solid #ffffff;
	height: 5px;
	visibility: hidden;
	}
   

/* 라벨 색상 지정 */
#tab-1:checked ~ .tab label:nth-child(1),
#tab-2:checked ~ .tab label:nth-child(2)
{
  background-color: #CBE2B8;
  box-shadow: none;
}

.content > div {
  display: none;
	
}

/* 라벨 틀, 색상지정 */
#tab-1:checked ~ .content div:nth-child(1),
#tab-2:checked ~ .content div:nth-child(2) {
   display: block;
   border: 1px solid #ccc;
   border-top-color: #CBE2B8;
   border-top-width: 5px;
}


.tab {
  overflow: hidden;
  
}

/* 라벨 속성 */
.tab label {
    font-size: 18px;
    cursor: pointer;
    float: left;
    width: 50%;
    text-align: center;
    padding: 10px 0;
    text-transform: uppercase;
    font-weight: bold;
    letter-spacing: 2px;
    user-select: none;
    -webkit-user-select: none;   
}

/* 박스 안 내용 */
  .content {
  background-color: ffffff;
  min-height: 250px;
}

   .content > div{
   padding: 30px;
   line-height: 1.5;
   font-size: 17px;
}
	
 /* 라디오 버튼 가려두기 */ 
    .radio_btn{
    opacity: 0;
    }
  
/* 로그인 윗 박스 로그인버튼 */     
   #login_btn_1 {
      display: block;
      border: 1px solid #CBE2B8;
      width: 200px;
      height: 35px;
      cursor: pointer;
      margin-right: 5px;
      margin: 0 auto;
      background-color: #CBE2B8;
      color: white;
      font-weight: bold; 
   }
   
    #login_btn_2 {
      display: block;
      border: 1px solid #1EC800;
      width: 200px;
      height: 35px;
      cursor: pointer;
      margin-right: 5px;
      margin: 0 auto;
      background-color: #1EC800;
      color: white;
      font-weight: bold; 
   }
   
     #login_btn_3 {
      display: block;
      border: 1px solid #ccc;
      width: 200px;
      height: 35px;
      cursor: pointer;
      margin-right: 5px;
      margin: 0 auto;
      background-color: #ccc;
      color: white;
      font-weight: bold; 

   }
   
 /* 회원가입 */
   #sign_up h3 {
      margin: 0px;
   }
 
   #sign_up_btn {
      display: block;
      border-radius: 10px;
      border: 1px solid #CBE2B8;
      width: 110px;
      height: 35px;
      cursor: pointer;
      margin-right: 5px;
      margin: 0 auto;
      background-color: #CBE2B8;

   }
   
/* 아이디찾기 */  
   #find_id h3 {
      margin: 0px;
   }
     
   #find_id_btn {
      display: block;
      border-radius: 10px;
      border: 1px solid #CBE2B8;
      width: 110px;
      height: 35px;
      cursor: pointer;
      margin-right: 5px;
      margin: 0 auto;
      background-color: #CBE2B8;

   }
   
 /* 비밀번호찾기 */  
   #find_pwd h3 {
      margin: 0px;
   }
     
   #find_pwd_btn {
      display: block;
      border-radius: 10px;
      border: 1px solid #CBE2B8;
      width: 110px;
      height: 35px;
      cursor: pointer;
      margin-right: 5px;
      margin: 0 auto;
      background-color: #CBE2B8;

   }

   body {
     
   }
   
/* Style the header */
.row{
	width:1600px;
	margin:0 auto;
	padding-top: 140px;
	position: relative;
}


/* Create three unequal columns that floats next to each other */
.column {
  float: left;
  padding: 10px;
  height: 1000px; /* Should be removed. Only for demonstration */
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

a{
	text-decoration:none;
}

</style>
<script src="https://kit.fontawesome.com/eef195c997.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
</script>
</head>
<body>

 <!-- Header Start -->
	<header>
	
		<div class="header">
		
			<div class="header_top">
				<ul>
					<li>
						<a href="#"><img src="login.png"></a>
					</li>
				
					<li>
						<a href="#"><img src="insertMember.png"></a>
					</li>			
					
					<li>
						<a href="#"><img src="map.png"></a>
					</li>
				</ul>
			</div>
		
			<div id="header_row">
			<div class="bar_logo">
				<img src="logo.png" width="400">
			</div>
			
			<div id="bar_menu">
			<nav>
				<ul>
					<li><a href="#">예약/조회/발급</a>
						<ul>
						<li><a href="#">진료예약</a></li>
						<li><a href="#">예약안내</a></li>
						<li><a href="#">온라인예약</a></li>
						<li><a href="#">예약조회/취소</a></li>
						<li><a href="#">1:1전문의 상담</a></li>
						<li><a href="#">진료과별 상담</a></li>
						</ul>
					
					</li>
					<li><a href="#">의료진/의료과</a>
						<ul>
						<li><a href="#">의료진</a></li>
						<li><a href="#">의료과</a></li>
						<li><a href="#">의료과 검색</a></li>
						</ul>
					</li>
					
					<li><a href="#">이용안내</a>
						<ul>
						<li><a href="#">병문안 안내</a></li>
						<li><a href="#">편의시설 안내</a></li>
						<li><a href="#">층별 안내</a></li>
						<li><a href="#">찾아오시는 길 안내</a></li>
						<li><a href="#">칭찬 게시판</a></li>
						<li><a href="#">병원소개</a></li>
						<li><a href="#">병원소개</a></li>
						<li><a href="#">병원소식</a></li>
						</ul>
					</li>
					
					<li><a href="#">고객 서비스</a>
						<ul>
						<li><a href="#">증명서 발급 안내</a></li>
						<li><a href="#">증명서 발급</a></li>
						<li><a href="#">온라인 신청</a></li>
						<li><a href="#">건강 정보</a></li>
						<li><a href="#">건강TV</a></li>
						<li><a href="#">약정보</a></li>
						<li><a href="#">이달의 강좌</a></li>
						</ul>
					</li>
				</ul>
			</nav>
			</div>
				
			<div id="menu_links">
				<a href="#"><i class="fas fa-bars"></i></a>
			</div>
			</div>
		</div>
	</header>
	<!-- Header End -->
   
   <div class="row">
   
     	<div class="column side" id="column_side_left"></div>
     
      	<!-- 메인부분 -->
  		<div class="column middle">
   
        <div class="login_top"><!-- 가운데 -->          
           <div id="login_top1"> <!-- 안에 박스 -->
          <input type="radio" class="radio_btn" id="tab-1" name="show" checked/>
		  <input type="radio" class="radio_btn" id="tab-2" name="show" />
		  <div class="tab">
		    <label for="tab-1">회원로그인</label>
		    <label for="tab-2">비회원로그인</label>
		  </div>
    	<div class="content">
   		<div class="content-dis">
      	   <span>회원 서비스를 이용하시려면 로그인이 필요합니다.</span><br>
           <span>아이디와 비밀번호를 입력 후 로그인 부탁드립니다.</span><br><br>
           <span id="id"><input class="text" type="text" name="id" placeholder="아이디"></span><br>
           <span id="pwd"><input class="text" type="password" name="pwd" placeholder="비밀번호"></span><br><br>
           <button id="login_btn_1"><a href="main.jsp">로그인</a></button>
           <div id="enter02"></div>
           <button id="login_btn_2">네이버 아이디로 로그인</button>	<!-- API 설정시 이미지 파일로 변경  -->
    	</div>
    	
   		 <div class="content-dis">
  	       <span>예약을 하시려면 로그인이 필요합니다.</span><br>
           <span>휴대폰으로 본인인증 부탁드립니다.</span><br>
           <div id="enter01"></div>
           <button id="login_btn_3">본인인증(휴대폰)</button> <!-- API 설정  -->
           <div id="enter02"></div>
           <button id="login_btn_1">로그인</button>
           
    	</div>
	
 
	</div>      
           </div> <!-- 안에 박스 닫기 -->    
        </div> <!-- 가운데 닫기-->
        
        
        <div class="login_under"> <!-- 밑 박스 -->
           <div id="login_under1">
           <span id="sign_up"><h3>회원가입</h3></span>
           <img src="./image/sign.JPG" height="30" width="35">
           <button id="sign_up_btn"><a href="/join-allow">회원가입하기</a></button>
           </div>
           <div id="login_under2">
           <span id="find_id"><h3>아이디 찾기</h3></span>
           <img src="./image/find.JPG" height="30" width="35">
           <button id="find_id_btn">아이디찾기</button>
           </div>
           <div id="login_under3">
           <span id="find_pwd"><h3>비밀번호 찾기</h3></span>
           <img src="./image/find.JPG" height="30" width="35">
           <button id="find_pwd_btn">비밀번호 찾기</button>
           </div>  
  		 </div><!-- 밑 박스 닫기-->
           
      </div>
          		<div class="column side" id="column_side_right"></div>
      </div>  <!-- 메인 닫기-->

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