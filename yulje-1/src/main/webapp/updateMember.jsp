<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
   * {
     box-sizing: border-box;
     font-family: "맑은 고딕";
   }
   
   .mypage_menu{
      margin :0px;
      padding :0px;
      width: 819px;
      height: 800px;
      border: 1px solid #EAEAEA;
      z-index: 5px;
   
   
   }
   
   
   
   .mypage_top{
      text-align : center;
      justify-content: center;
      display: flex;
      z-index: 4px;
      border-top : 4px solid #5D5D5D;
   
   }
   .mypage_top div{
      color: #747474;
      font-size: 14px;
      z-index: 2px;
      font-weight: bold;
   }
   
   
   
   #top_menu_1{
      border: 1px solid #94CCC4;
      border-top : 6px solid #5D5D5D;
      width: 273px;
      height: 45px;
      z-index: 0px;
   }
   
   #top_menu_1 p{
      margin: 0px;
      margin-top: 10px;
   }
   
   #top_menu_2{
      
      border: 1px solid #94CCC4;
      border-top : 6px solid #5D5D5D;
      width: 273px;
      height: 45px;
      z-index: 0px;
   }
   #top_menu_2 p{
      margin: 0px;
      margin-top: 10px;
   }
   
   #top_menu_3{
      
      border: 1px solid #94CCC4;
      border-top : 6px solid #5D5D5D;
      width: 273px;
      height: 45px;
      z-index: 0px;
   }
   #top_menu_3 p{
      margin: 0px;
      margin-top: 10px;
   }
   
   #top_menu_1:hover{
      color: #ffffff;
      background-color: #94CCC4;
   }
   
   #top_menu_2:hover{
      color: #ffffff;
      background-color: #94CCC4;
   }
   
   #top_menu_3:hover{
      color: #ffffff;
      background-color: #94CCC4;
   }
   
   
   .mypage_under{
      text-align : center;
      justify-content: center;
      display: flex;
   
   }
   
   .mypage_under div{
      color: #747474;
      font-size: 14px;
      font-weight: bold;
   }
   
   #under_menu_1{
      margin : 0px;
      padding: 0px;
      border: 1px solid #94CCC4;
      width: 273px;
      height: 45px;
   }
   
   #under_menu_2{
      margin : 0px;
      padding: 0px;
      border: 1px solid #94CCC4;
      width: 273px;
      height: 45px;
   }
   
   #under_menu_3{
      margin : 0px;
      padding: 0px;
      border: 1px solid #94CCC4;
      width: 273px;
      height: 45px;
   }
   
   #under_menu_1:hover{
      color: #ffffff;
      background-color: #94CCC4;
   }
   
   #under_menu_2:hover{
      color: #ffffff;
      background-color: #94CCC4;
   }
   
   #under_menu_3:hover{
      color: #ffffff;
      background-color: #94CCC4;
   }
   
   #mypage_title{
      text-align: center;
      height: 80px;
      padding-top: 20px;
      
         
   }
   
   #mypage_box{
      width: 816px;
      height: 80px;
      background-color: #FCF8F2;
      z-index: 0px;
      text-align: center; 
      display: flex;
      justify-content: center;
      padding-top: 25px;
         
   }
   
   #mypage_box_div1{            
      height: 30px;
      width: 150px;
      color: #5D5D5D;
      text-align: center;
      
   }
   
   #mypage_box_div2{            
      height: 30px;
      width: 150px;
      color: #5D5D5D;
      text-align: center;
   }
   
   #mypage_box_empty{
      height: 30px;
      border-right: 2px solid #EAEAEA;
      margin-left: 10px;
      margin-right: 10px;
   
   }
   
   #mypage_box_div1:hover{
      color : #94CCC4;
        font-weight: bold;
        border-bottom: 3px solid #94CCC4;
   }
   
   #mypage_box_div2:hover{
      color : #94CCC4;
        font-weight: bold;
        border-bottom: 3px solid #94CCC4;
   }
   
   
      
   .mypage_detail_under{
      width: 817px;
      margin-left: 26px;
      margin-top: 1px;
      
   }
   
   
   #mypage_title_sub{
      width: 760px;
      height: 310px;
      border: 1px solid #EAEAEA;
      border-top: 3px solid #94CCC4;
      border-bottom: 3px solid #94CCC4;
   }
   
   
   #mypage_title_sub h4{
      text-align: center;
      float:left;
      color: #5D5D5D;
      font-weight: bold;
      margin:0px;
      padding: 5px 0 0 10px;
   }
   
   
   .mypage_title_sub_div1{
   	border-bottom: 1px solid #94CCC4;
   	height: 35px;
   }
   
   .mypage_title_sub_span2{
   	float:right;
   	margin:5px 10px 0 0;
   }
   
 /* 정보수정 입력창 부분 */  
   .table_area{
   	margin: 20px 20px 20px 20px;
   	
   }
   .table_input{
	display: inline;
   }
   .table_tr{
   	margin:5px 0 10px 5px;
   }
   
   #table_span1{
   	margin-left:110px;
   }
   #table_span2{
   	margin-left:95px;
   }
   #table_span3{
   	margin-left:35px;
   }
   #table_span4{
   	margin-left:68px;
   }
    #table_span5{
   	margin-left:110px;
   }
    #table_span6{
   	margin-left:57px;
   }
    #table_span7{
   	margin-left:90px;
   }
   .text-2{
	width: 100px;
	font-size: 14px;
}
/* 정보수정 입력창 부분 끝 */   

/* 입력확인 버튼 */  
   #mypage_title_btn{
      text-align: center;
      width: 760px;
      height: 150px;
   }
   
   #mypage_title_btn1{
      border-radius: 10px;
      width: 150px;
      height: 35px;
      border: 1px solid #94CCC4;
      background-color: #94CCC4;
      color: #ffffff;
      font-weight: bold;
      margin-top: 55px;
   }
   
   #mypage_title_btn2{
      border-radius: 10px;
      width: 150px;
      height: 35px;
      border: 1px solid #94CCC4;
      background-color: #ffffff;
      color: #94CCC4;
      font-weight: bold;
      margin-top: 55px;
   }
   #mypage_title_btn3{
     border-radius: 3px;
      width: 70px;
      height: 26px;
      border: 1px solid #94CCC4;
      background-color: #94CCC4;
      color: #ffffff;
      font-weight: bold;
      margin: 0 0 0 10px;
   }
   
 /* 입력확인 버튼 끝 */   
 
 
   #container .column-side-left .column-side-right .column-middle{
      width: 1200px;
      margin: 0px auto;
      padding: 20px;
      justify-content: center;
      display: flex;
      /*border: 1px solid #bcbcbc;*/
   }
   
     

   body {
     
   }
   
   /* Style the header */
   .header {
     background-color: #f1f1f1;
     padding: 30px;
     text-align: center;
     font-size: 35px;
   }
   
   /* Create three unequal columns that floats next to each other */
   .column {
     float: left;
     padding: 10px;
     height: 300px; /* Should be removed. Only for demonstration */
   }
   
   /* Left and right column */
   #column-side-left {
   width: 160px;
   padding: 20px;
   margin-right: 20px;   
   float: left;
   /*border: 1px solid #bcbcbc;*/
   }
   
   #column-side-right {
   width: 160px;
   padding: 20px;
   margin-bottom: 20px;    
   position: relative;
   float: left;
   /*border: 1px solid #bcbcbc;*/
   }
   
   /* Middle column */
   .column-middle {
   width: 880px;
   margin: 20px auto;
    
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
</style>
<link rel="stylesheet" href="newHeader.css">
<script src="https://kit.fontawesome.com/eef195c997.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
//이메일 입력방식 선택
$(function() {
	$('#selectEmail').change(function(){
		   $("#selectEmail option:selected").each(function () {
				
				if($(this).val()== '1'){ //직접입력일 경우
					 $("#str_email02").val('');                        //값 초기화
					 $("#str_email02").attr("disabled",false); //활성화
					 $("#str_email02").attr("self","self");
				}else{ //직접입력이 아닐경우
					 $("#str_email02").val($(this).text());      //선택값 입력
					 $("#str_email02").attr("disabled",true); //비활성화
				}
		   });
	});
	
	/* 입력부분에 다 입력했는지 */
	$(document).on("click","#mypage_title_btn1",function check() {
		 
		 var pwd = $("#pwd").val();
		 pwd = pwd.trim();
		 if(pwd == ""){
				alert("비밀번호를 입력하세요");
				return false;
		}
		 var tel2 = $("#tel2").val();
		 tel2 = tel2.trim();
		 if(tel2 == ""){
				alert("전화번호를 입력하세요");
				return false;
		}	
		 var tel3 = $("#tel3").val();
		 tel3 = tel3.trim();
		 if(tel3 == ""){
				alert("전화번호를 입력하세요");
				return false;
		}	
		 if(isNaN(tel2)){
				alert("전화번호는 숫자로 입력하세요");
				return false;
		} 
		 if(isNaN(tel3)){
				alert("전화번호는 숫자로 입력하세요");
				return false;
		} 
		 var str_email01 = $("#str_email01").val();
		 str_email01 = str_email01.trim();
		 if(str_email01 == ""){
				alert("이메일을 입력하세요");
				return false;
		}
		 if($("#str_email02").attr("self") == "self"){
			 var str_email02 =$("#str_email02").val();
			 str_email02 = str_email02.trim();
			 if((str_email02) ==""){
				alert("이메일을 입력하세요");
				return false;
			 }
		}
		 
	});
				
});
</script>
</head>
<body>

   
  <!-- Header Start -->
     <jsp:include page="/header.jsp"></jsp:include>
<!-- 	Header End -->
   

   <div class="column-side-left" style="background-color:#aaa;">Column</div>
     
     <!-- 메인 -->
   <div id="container">
   <div class="column-middle">
      <div class="mypage_menu">
         <div class="mypage_top">
            <div id="top_menu_1"><p>나의 차트</p></div>
             <div id="top_menu_2"><p>개인정보</p></div>
              <div id="top_menu_3"><p>진료 예약 현황</p></div>
           </div>
           
           <div class="mypage_under">
            <div id="under_menu_1"><p>1:1 상담내역</p></div>
             <div id="under_menu_2"><p>인터넷증명서 발급</p></div>
              <div id="under_menu_3"><p>강좌신청내역</p></div>
           </div>
           
           <div class="mypage_detail">
              <div id="mypage_box">
                    <div id="mypage_box_div1">개인정보수정</div>
                    <div id="mypage_box_empty"></div>
                    <div id="mypage_box_div2">비밀번호 변경</div>
                 </div>
              <div id="mypage_title">
                 <h2>개인정보수정</h2>
              </div>
           <div class="mypage_detail_under">
           <form id="updateForm">
              <div id="mypage_title_sub">
              	<div class="mypage_title_sub_div1">
               		<span class="mypage_title_sub_span1"><h4>기본정보 입력</h4></span>
                	<span class="mypage_title_sub_span2"><font color="orange">*</font> 필수입력항목입니다</span>
              	</div>
              	<div class="mypage_title_sub_div2">
              		<div class="table_area">
              			<tbody>
              				<div class="table_tr">
              				<tr>
              					<th>이름</th><td><div class="table_input"><span id="table_span1">김태평</span></div></td>
              				</tr>
              				</div>
              				
              				<div class="table_tr">
              				<tr>
              					<th>아이디</th><td><div class="table_input"><span  id="table_span2">sisi</span></div></td>
              				</tr>
              				</div>
              				<div class="table_tr">
              				<tr>
              					<th>비밀번호 확인<font color="orange">*</font></th><td><div class="table_input"><span id="table_span3"><input type="password" name="pwd" id="pwd"></span></div></td>
              				</tr>
              				</div>
              				<div class="table_tr">
              				<tr>
              					<th>휴대전화<font color="orange">*</font></th><td><div class="table_input"><span id="table_span4">
              					<select class="text-2" name="tel1">
					            	<option>010</option>
					            	<option>011</option>
					            	<option>016</option>
					            </select></span>
            						 - <input type="text" name="tel2" id="tel2"> - <input type="text" name="tel3" id="tel3"></div></td>
              				</tr>
              				</div>
              				<div class="table_tr">
              				<tr>
              					<th>주소</th><td><div class="table_input"><span id="table_span5"><input type="text" name="addr1"><button id="mypage_title_btn3">검색</button></span></div></td>
              				</tr>
              				</div>
              				<div class="table_tr">
              				<tr>
              					<th>나머지 주소</th><div class="table_input"><span id="table_span6"><input type="text" name="addr2"></span></div>
              				</tr>
              				</div>
              				<div class="table_tr">
              				<tr>
              					<th>이메일<font color="orange">*</font></th><td><div class="table_input"><span id="table_span7"><input type="text" name="str_email01" id="str_email01" style="width:100px"> @
<input type="text" name="str_email02" id="str_email02" style="width:100px;" disabled value="naver.com">
<select style="width:100px;margin-right:10px" name="selectEmail" id="selectEmail">
	 <option value="1">직접입력</option>
	 <option value="naver.com" selected>naver.com</option>
	 <option value="hanmail.net">hanmail.net</option>
	 <option value="hotmail.com">hotmail.com</option>
	 <option value="nate.com">nate.com</option>
	 <option value="yahoo.co.kr">yahoo.co.kr</option>
	 <option value="empas.com">empas.com</option>
	 <option value="dreamwiz.com">dreamwiz.com</option>
	 <option value="freechal.com">freechal.com</option>
	 <option value="lycos.co.kr">lycos.co.kr</option>
	 <option value="korea.com">korea.com</option>
	 <option value="gmail.com">gmail.com</option>
	 <option value="hanmir.com">hanmir.com</option>
	 <option value="paran.com">paran.com</option>
</select></div></td>
              				</tr>
              				</div>          				
              				
              			</tbody>
              		</div>
              	</div>
              </div>
              <div id="mypage_title_btn">
                 <input type="submit" id="mypage_title_btn1" value="완료하기">
                 <input type="reset" value="취소" id="mypage_title_btn2">
              </div>
              </form>     
           </div>
           </div>   
           
        </div>
           
   </div>
   </div>
        
     
   <div class="column-side-right" style="background-color:#ccc;">Column</div>
   
   
   <div class="footer">
     <p>Footer</p>
   </div>
  

   

</body>
</html>