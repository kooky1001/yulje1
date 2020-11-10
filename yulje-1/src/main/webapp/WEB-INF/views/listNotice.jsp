<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="newfooter.css">
<script src="https://kit.fontawesome.com/eef195c997.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="header.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

</script>
<style type="text/css">
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;	
}

/* Style the header */
/*
.header {
  background-color: #f1f1f1;
  padding: 30px;
  text-align: center;
  font-size: 35px;
}
*/

/* Create three unequal columns that floats next to each other */
.column {
  float: left;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
}

/* Left and right column */
.column.side {
  width: 25%;
  
}

/* Middle column */
.column.middle {
  width: 50%;
  height: auto;
}

.row{
	padding-top: 130px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Style the footer */
/*
.footer {
  background-color: #f1f1f1;
  padding: 10px;
  text-align: center;
}
*/

/* 위에는 w3school 긁어온것 */



/* 페이지이름 */
.part_title{
	padding: 50px;
	text-align: center;
	
	font-size: 30px;
	font-family: bold;
}

/* 내용부분(메인) */
.part_content{
	width: 100%;
	
	border-top: 3px solid #94ccc4;
}

/* 공지사항 목록 리스트 */
.list_notice{
	margin: auto;
  	width: 90%;
  	padding: 10px;
}

/* w3school 긁어옴 */
table {
  border-collapse: collapse;
  width: 100%;
}

/* w3school 긁어옴 */

td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #94ccc4;
}

/* 리스트의 맨윗부분. 글번호 , 제목, 작성일 */
#th{
	text-align: center;
}

.bottom{
	height: 180px;
	text-align: center;
	margin-top: 30px;
}

.num{
	border: 1px solid #94ccc4;
	padding-left: 4px;
	padding-right: 4px;
	padding-top: 2px;
	padding-bottom: 2px;
}

.div_num{
	margin-bottom: 20px;
}

.search{
	display: inline;
}

#btn{
	width: 50px;
	height: 20px;
	border: none;
	border-radius: 6px;
	background-color: #94ccc4;
	margin-left: 10px;
}


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
<title>공지사항</title>
</head>







<body>
<!-- Header Start -->
     <jsp:include page="/header.jsp"></jsp:include>
<!-- 	Header End -->


<div class="row">
	<!-- 양쪽 빈공간중에 왼쪽. 메뉴바 들어옴. -->
  <div class="column side">
  	<!-- sidebar -->
  	<div>
  		<ul class="side_ul">
  		<h1 style="font-size: 23px;" class="leftTop">게시판</h1>		<!-- 메뉴 이름 (페이지마다 다르게 지정) -->
		  <li class="side_li"><a href="listNotice.jsp">공지사항</a></li>			<!-- 서브 메뉴 이름 (페이지마다 다르게 지정) -->
		  <li class="side_li"><a href="listCompliment.jsp">칭찬게시판</a></li>
		  <li class="side_li"><a href="">건의게시판</a></li>
		  <li class="side_li"><a href="">1:1상담</a></li>
		</ul>
  	</div>
  	
  	<!-- //sidebar -->
  </div>
  
  	<!-- 컨텐츠 -->
  <div class="column middle">
  
  <!-- 페이지의 이름. -->
  	<div class="part_title"> 
  		<p>공지사항</p>
  	</div>
  	
  	<!-- 페이지의 내용 -->
  	<div class="part_content"> 
  		<div>
  		<table class="list_notice">
  		<thead>
  			<tr id="th">
  				<td style="width: 10%;">no</td>
  				<td style="width: 75%">제목</td>
  				<td style="width: 15%">작성일</td>
  			</tr>
  		</thead>
  		<tbody>
  			<tr>
  				<td>5</td>
  				<td style="cursor: pointer;" onclick="location.href='/detailNotice.jsp';">
  				코로나19로 인한 불안과 걱정은 STOP! "감염병 스트레스" 이겨낼 수 있습니다.
  				</td>
  				<td>2020.10.20</td>
  			</tr>
  			<tr>
  				<td>4</td>
  				<td>공지사항입니다 공지사항입니다.</td>
  				<td>2020.10.20</td>
  			</tr>
  			<tr>
  				<td>3</td>
  				<td>공지사항입니다 공지사항입니다.</td>
  				<td>2020.10.20</td>
  			</tr>
  			<tr>
  				<td>2</td>
  				<td>공지사항입니다 공지사항입니다.</td>
  				<td>2020.10.19</td>
  			</tr>
  			<tr>
  				<td>1</td>
  				<td>공지사항입니다 공지사항입니다.</td>
  				<td>2020.10.19</td>
  			</tr>
  		</tbody>
  		</table>
  		</div>
  	</div>
  	<!-- 리스트번호, 검색 -->
	<div class="bottom">
		<div class="div_num">
			<span class="num">1</span>
			<span class="num">2</span>
			<span class="num">3</span>
			<span class="num">다음</span>
		
		</div>
		<div class="search">
			<input type="text" size="30">
			<button id="btn">검색</button>
		</div>
	</div>
  </div>
  <div class="column side"> </div>
</div>

<!-- footer -->
	
	<jsp:include page="/footer.jsp"></jsp:include>
	
<!-- //footer -->
</body>
</html>