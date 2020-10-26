<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/temp.css">
<link rel="stylesheet" href="./css/sidebar.css">
<style type="text/css">
#title {
	border-bottom: solid 1px #ddd;
	padding-bottom: 10px;
}

#title strong {
	font-size: 21px;
}
.middle {
	color: #5d5d5d;
}

#title img {
	width: 250px;
	height: 350px;
	margin-right: 30px;
/* 	margin-bottom: 30px; */
}
#img {
	float: left;
}

#content {
	display: table-cell;
	height: 300px;
	width: 400px;
}

#main h3 {
	border-left: solid 5px #94CCC4;
	padding-left: 20px;
}

#main {
/* 	padding-left: 5%; */
/* 	padding-right: 5%; */
	color: #5d5d5d;
	margin-top: 20px;
/* 	padding-top: 20px; */
	font-family: 맑은 고딕;
}

#main table {
	width: 100%;
	text-align: center;
	border-collapse: collapse;
}

#main td {
/* 	text-align: left; */
	height: 40px;
	padding: 20px;
	border-bottom: solid 2px #ddd;
}

#main th {
	background-color: #94CCC4;
	color: white;
	height: 40px;
	border: solid 2px white;
}

.period {
	width: 30%;
}

.car {
	margin-top: 40px;
}
.edu {
	margin-top: 40px;
}

#bot {
	float: right;
	margin-top: 30px;
}

.info table {
	width: 100%;
	text-align: left;
	margin-top: 10px;
}
.info td {
	padding-top: 10px;
}
.info th {
	padding-top: 10px;
}

.sche h3 {
	margin-top: 20px;
	border-left: solid 5px #94CCC4;
	padding-left: 20px;
}
.sche table {
	border-collapse: collapse;
	text-align: center;
}
.sche th {
	background-color: #94CCC4;
	color: white;
	border: solid 1px white;
}

.sche td {
	border: solid 1px #ddd;
}

.middle button {
	margin-left: 10px;
	height: 30px;
	background-color: #94CCC4;
	
	  border: none;
	  color: white;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  transition-duration: 0.4s;
	  cursor: pointer;
}

.middle button:hover {
  background-color: white;
  color: #94CCC4;
}

.cbot {
	float: right;
	margin-top: 10px;
}

#title table {
	width: 100%;
	
}
</style>
</head>
<body>
<!-- Header Start -->
     <jsp:include page="/header.jsp"></jsp:include>
<!-- 	Header End -->

<div class="row">
  <div class="column side">
    <!-- sidebar -->
  	<div>
  		<ul class="side_ul">
  		<h1 style="font-size: 23px;" class="leftTop">의료진/진료과</h1>		<!-- 메뉴 이름 (페이지마다 다르게 지정) -->
		  <li class="side_li"><a href="">진료과</a></li>			<!-- 서브 메뉴 이름 (페이지마다 다르게 지정) -->
		  <li class="side_li"><a href="/listDoctor">의료진</a></li>
		  <li class="side_li"><a href="">의료과 검색</a></li>
		</ul>
  	</div>
  	
  	<!-- //sidebar -->
  </div>
  <div class="column middle">
  	<div id="title">
  		<div id="img">
	  		<img alt="" src="./image/yu.jpg">
  		</div>
  		<div id="content">
  			<h2>의사소개_<span id="dept">호흡기내과</span></h2>
<!--   			<p> -->
  				<div class="info">
	  				<strong>유철규</strong><span> 교수</span>
	  				<table>
	  					<tr>
	  						<th>진료과</th>
	  						<td>호흡기 내과</td>
	  					</tr>
	  					<tr>
	  						<th>직급</th>
	  						<td>과장</td>
	  					</tr>
	  					<tr>
	  						<th>세부전공</th>
	  						<td>폐렴, 기관지염</td>
	  					</tr>
	  				</table>
  				</div>
  				<div class="sche">
  					<h3>진료일정</h3>
  					<table>
  						<tr>
  							<th>구분</th>
  							<th>월</th>
  							<th>화</th>
  							<th>수</th>
  							<th>목</th>
  							<th>금</th>
  							<th>토</th>
  						</tr>
  						<tr>
  							<th>오전</th>
  							<td></td>
  							<td></td>
  							<td>O</td>
  							<td>O</td>
  							<td></td>
  							<td></td>
 						</tr>
 						<tr> 
 							<th>오후</th>
  							<td></td>
  							<td></td>
  							<td>O</td>
  							<td>O</td>
  							<td></td>
  							<td></td>
  						</tr>
  					</table>					
  				</div>
  				<div class="cbot">
  					<button>진료예약</button>
  				</div>
<!--   			</p> -->
  		</div>
  	</div>
  	
  	<div id="main">
  		<div class="car">
	  		<h3>경력사항</h3>
	  		<table>
	  			<tr>
	  				<th class="period">기간</th>
	  				<th>내용</th>
	  			</tr>
	  			<tr>
	  				<td class="period">2018/02 ~ 현재</td>
	  				<td>서울대학교 의과대학 내과 주임교수</td>
	  			</tr>
	  			<tr>
	  				<td class="period">2014-08-08 ~ 2018-02-02</td>
	  				<td>호흡기내과 과장</td>
	  			</tr>
	  			<tr>
	  				<td class="period">2012-08-08 ~ 2015-02-02</td>
	  				<td>호흡기내과 폐기능실장</td>
	  			</tr>
	  		</table>
  		</div>
  		<div class="edu">
	  		<h3>학력사항</h3>
	  		<table>
	  			<tr>
	  				<th class="period">기간</th>
	  				<th>내용</th>
	  			</tr>
	  			<tr>
	  				<td class="period">2018/02 ~ 현재</td>
	  				<td>서울대학교 의과대학 내과학 의학박사</td>
	  			</tr>
	  			<tr>
	  				<td class="period">2014-08-08 ~ 2018-02-02</td>
	  				<td>서울대학교 의과대학 내과학 의학석사</td>
	  			</tr>
	  			<tr>
	  				<td class="period">2012-08-08 ~ 2015-02-02</td>
	  				<td>서울대학교 의과대학 의학사</td>
	  			</tr>
	  		</table>
  		</div>
  		<div id="bot">
  		<a href="/listDoctor">
  			<button>의료진 목록</button>
  			</a>
  		</div>
  	</div>
  </div>
  <div class="column side"></div>
</div>

<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>