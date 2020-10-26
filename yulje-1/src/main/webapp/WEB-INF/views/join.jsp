<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/temp.css">
<style type="text/css">

.side {
/* 	border: solid 1px black; */
}

/* 타이틀 */
#title {
	text-align: center;
	border-bottom: 2px solid #94CCC4;
}

/* 메인 */
#main {
	color: #5d5d5d;
	justify-content: center;
 	width: 100%; 
 	padding-right: 10%;
 	padding-left: 10%;
}

.maintitle {
	margin-bottom: 20px;
}

.mtitle {
	margin-top: 30px;
	border-left: 5px solid #94CCC4;
	padding-left: 10px;
}
.ptitle {
	color: #94CCC4;
	margin-top: 30px;
	border-bottom: solid 1px #CBE2B8;
	padding-bottom: 20px;
}

/* 테이블 */
.table {
 	width: 100%; 
 	border-collapse: collapse;
}

.table tr {
	padding-bottom: 20px;
	margin-bottom: 20px;
}

.table th {
	text-align: left;
	padding-right: 50px;
	padding-bottom: 20px;
	padding-top: 20px;
	margin-right: 0px;
	width: 30%;
	border-bottom: 1px solid #ddd;
}
.table td {
	text-align: left;
	padding-left: 30px;
	padding-bottom: 20px;
	padding-top: 20px;
	margin-left: 0px;
	border-bottom: 1px solid #ddd;
}

.tel {
	width: 60px;
}

.table .input {
	height: 30px;
 	width: 230px; 
}

.table button {
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

.table button:hover {
  background-color: white;
  color: #94CCC4;
}

.table span {
	color: #94CCC4;
	font-size: 12px;
	padding-top: 10px;
}

#sex {
	height: 30px;
	width: 50px;
	text-align: center;
}

#addr1 {
	height: 30px;
	width: 150px;
	margin-bottom: 5px;
}

#addr2 {
	height: 30px;
	width: 400px;
	margin-bottom: 5px;
}
#addr3 {
	height: 30px;
	width: 400px;
}


/* 버튼 */
.btn {
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
	  width: 100px;
}

.btn:hover {
  background-color: white;
  color: #94CCC4;
}

#bot {
	margin-top: 50px;
	justify-content: center;
	display: flex;
	margin-bottom: 50px;
}

.choice {
	margin-top: 30px;
	padding-top: 30px;
}

</style>
<script type="text/javascript">
</script>
</head>
<body>

<!-- Header Start -->
     <jsp:include page="/header.jsp"></jsp:include>
<!-- 	Header End -->

<div class="row">
  <div class="column side"></div>
  <div class="column middle">
  	<div id="title">
  		<h1>회원가입</h1>
  	</div>
  	<div id="main">
  		<div class="maintitle">
  			<h2 class="mtitle">개인정보입력</h2>
  		</div>
  		<div class="essential">
  			<h3 class="ptitle">필수입력사항</h2>
  			<div>
  				<table class="table">
  					<tr>
  						<th>이름</th>
  						<td><input type="text" id="name" name="name" class="input"></td>
  					</tr>
  					<tr>
  						<th>고객아이디</th>
  						<td><input type="text" id="id" name="id" class="input">
  							<button>중복확인</button>
  						</td>
  					</tr>
  					<tr>
  						<th>비밀번호</th>
  						<td><input type="password" id="pwd1" name="pwd1" class="input"><br><span>* 10~20자의 영문 대소문자, 숫자, 특수문자 중 2종류 이상 조합</span></td>
  					</tr>
  					<tr>
  						<th>비밀번호 확인</th>
  						<td><input type="password" id="pwd2" name="pwd2" class="input"></td>
  					</tr>
  					<tr>
  						<th>생년월일/성별</th>
  						<td><input type="date" id="birth" name="birth" class="input">
  							<select name="sex" id="sex">
  								<option value="남">남</option>
  								<option value="여">여</option>
  							</select>
  						</td>
  					</tr>
  					<tr>
  						<th>연락처</th>
  						<td>  							
  							<input type="number" id="tel1" name="tel1" placeholder="000" class="tel"> - 
  							<input type="number" id="tel2" name="tel2" placeholder="0000" class="tel"> - 
  							<input type="number" id="tel3" name="tel3" placeholder="0000" class="tel">
  						</td>
  					</tr>
  					<tr>
  						<th>이메일</th>
  						<td><input type="email" id="email" name="email" class="input"></td>
  					</tr>
  				</table>
  			</div>
  		</div>
  		
  		<div class="choice">
  			<h3 class="ptitle">선택정보 입력</h3>
  			<div>
  				<table class="table">
  					<div class="test">
  					<tr>
  						<th>주소</th>
  						<td><input type="text" name="addr1" id="addr1"><button>우편번호 검색</button><br>
  							<input type="text" name="addr2" id="addr2"><br>
  							<input type="text" name="addr3" id="addr3">
  						</td>
  					</tr>
  					</div>
  					<tr>
  						<th>메일수신여부</th>
  						<td><input type="radio" name="mail" value="동의">동의 
  						<input type="radio" name="mail" value="비동의">거부</td>
  					</tr>
  					<tr>
  						<th>문자수신여부</th>
  						<td><input type="radio" name="sms" value="동의">동의 
  						<input type="radio" name="sms" value="비동의">거부</td>
  					</tr>
  				</table>
  			</div>
  		</div>
  		
  		<div id="bot">
  			<button id="join" class="btn"><a href="main.jsp">가입하기</a></button>
  			<button id="cancel" class="btn">취소</button>
  		</div>
  		
  	</div>  
  </div>
  <div class="column side"></div>
</div>

<jsp:include page="/footer.jsp"></jsp:include>

</body>
</html>
