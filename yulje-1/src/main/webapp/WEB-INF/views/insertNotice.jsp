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

#title_line{
	padding-bottom: 17px;
	border-bottom: 1px solid #a4a4a4;
}

#notice_title{
	font-size: 20px;
	margin-top: 15px;
	margin-left: 20px;
	display: inline-block;
}

#notice_info{
	float: right;
	font-size: 13px;
	margin-top: 20px;
	margin-right: 12px;
	display: inline-block;
}

#notice_content{
	margin-top: 15px;
	margin-left: 20px;
	padding-top: 15px;
	padding-bottom: 60px;
	font-size: 15px;
}

.bottom{
	padding-top: 20px;
	text-align: center;
	border-top: 1px solid #A4A4A4;
}


button{
	width: 50px;
	height: 20px;
	border: none;
	border-radius: 6px;
	background-color: #94ccc4;
	margin-left: 5px;
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


</style>
<title>공지사항</title>
</head>
<body>
<!-- Header Start -->
     <jsp:include page="/header.jsp"></jsp:include>
<!-- 	Header End -->

<div class="row">
  <div class="column side">
  	<div>
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
  </div>
  <div class="column middle">
  	<!-- 페이지의 제목. -->
  	<div class="part_title"> 
  		<p>공지사항</p>
  	</div>
  		<!-- 페이지의 내용 -->
  	<div class="part_content">
  	<form action="/insertNotice" method="post" enctype="multipart/form-data">
  		<div id="title_line">
  			<div id="notice_title">제목 : <input type="text" name="title"></div>
  			<div id="notice_info"></div>
  		</div>
  		<div id="notice_content">
  			<textarea rows="" cols="" name="content"></textarea><br>
  			첨부파일 : <input type="file" name="fname"><br>
  		</div>
  		<input type="submit" value="등록">
  	</form>
  	</div>
  	
  		<!-- 하단버튼 -->
  	<div class="bottom">
  		<button style="cursor: pointer;">등록</button>
  		<button style="cursor: pointer;" onclick="location.href='listNotice.jsp';">취소</button>
  	</div>
  </div>
  <div class="column side"></div>
</div>

<!-- footer -->

<!-- //footer -->
</body>
</html>