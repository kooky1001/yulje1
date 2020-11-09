<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

tr:hover {background-color:#f5f5f5;}

#btn_my {
	border:2px solid #05147D;
	border-radius:3px;
	background-color : #05147D;
	color : white;
	padding 3px;
	
	
}

</style>
</head>
<body>

	<h2>지난진료내역보기</h2><hr>
	<table width="60">
	<tr>
		<th width="15%">진료번호</th>
		<th width="25%">날짜</th>
		<th>더보기</th>
	</tr>
	<c:forEach var="c" items="${list }">
	
	<tr>
		<td>${c.cli_no }</td>
		<td>${c.cli_date }</td>
		<td><a href="detailClinic.do?cli_no=${c.cli_no }">자세히보기</a></td>>
	</tr>
	
	</c:forEach>
	</table>
	<hr>
	<a href="myPage.do"><button id="btn_my">마이페이지</button></a>
</body>
</html>