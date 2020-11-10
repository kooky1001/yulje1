<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 호버를 사용할때 과이름과 클래스이름을 배열에 넣어서 처리하고 싶으나 
    	 할줄 몰라서 일일이 15개의 호버를 만들어주는 버전
     -->
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
   /* 최종 상단에 진료과 라고 적힌 부분*/
   #name{
   	font-size: 30px;
   	border-left: 5px solid #CBE2B8;
   	padding-left: 40px;
   }
   
   /* 왼쪽에 외과 내과 일반과 팻말있는 부분 */
	.main_left{
	display: inline;
	float: left;
  	margin: 20px 0px 10px 10px;
  	height: 500px;
  	/*border: 1px solid pink; */
	}
	
	/* 상단에 검색, 정렬 있는 부분 */
	.main_search{
	 display: block;
	 height:70px;
	 padding-top:15px;
	 border-bottom: solid 3px #CBE2B8;
	}
	
   .main_top {
   	  margin-top:20px;
      justify-content: center;
      display: flex;     
   }
   .main_under {
      justify-content: center;
      display: flex;      
   }
   
   .main_middle {
      justify-content: center;
      display: flex;      
   }
   /* 아이콘 밑 글자 */
   .main_top h2{
   	 margin: 10px 0px 0px 0px;
   	/* 이미지 범위를 넘지 않는 폰트사이즈*/
   	font-size: 20px;
   }
   /* 아이콘 안의 글자들 h3태그 h4태그*/
   h3{
    margin: 0px;
   	padding-top:30px;
   	/* 이미지 범위를 넘지 않는 폰트사이즈*/
   	font-size: 20px;
   	color: white;
   }
   h4{
    display:inline;
    margin: 0px 12px 0px 12px;
   	padding:0px;
   	/* 이미지 범위를 넘지 않는 폰트사이즈*/
   	font-size: 15px;
   	color: white;
   }
   
   /* 아이콘 밑 글자 */
   .main_middle h2{
   	 margin: 10px 0px 0px 0px;
   	font-size: 20px;
   }
   /* 아이콘 밑 글자 */
   .main_under h2{
   	margin: 10px 0px 0px 0px;
   	font-size: 20px;
   }
   
   
   .main_hover{
   	  background-color: #94CCC4;
      width: 160px;
      height: 170px;
      margin: 10px;
   }
   
   .main_block{
      border: 1px solid #94CCC4;
      width: 160px;
      height: 170px;
      margin: 0px 20px 20px 0px;
       /* 이미지를 가운데에 넣으려고 해봄 */
      text-align:center;
   }
   
   
   

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
     clear: both;
     */
   }
   
   /* Create three unequal columns that floats next to each other */
   .column {
    float: left;
  padding: 10px;
  height: 1000px;

   }
   .column.side {
   		 width: 300px;
	  
	}
	/* Middle column */
	.column.middle {
	width: 1000px;
	}
   
   
   
  
   

}   
	/*main_search 속 - 진료과 목록 위에 정렬*/
	.search_radio{
		float: left;
		margin-top:8px;
		padding-top:10px;
		height:40px;
	}
	
	.container{
	 font-size: 19px;
	 margin: 0px 18px 0px 8px;
	}

	/*main_search 속 - 진료과 목록 위에 검색창*/
	.search{
	float: right;
	height:50px;
	margin: 0px;
	padding:5px 0px 0px 0px;
	}
	
	
	/*main_search 속 - 진료과 목록 위에 검색창*/
	.text{
	width:280px;
	height: 35px;
    padding-right: 10px;
    padding-left: 10px;
    border: 1px solid #ccc;
    color: #666;
    font-size: 16px;
	}
	.btnSearch{
	 background-color: #CBE2B8;
	 width: 70px;
     height: 35px;
     padding: 0 10px;
     color: #fff;
     font-size: 16px;
     letter-spacing: -.8px;
     line-height: 1.5;
	}
	.a{
		
	}
	
	/*진료과 아이콘 설정*/
   .icon{
    width:100px;
    height:100px;
   }  
	.icon2{
	display:inline;
	margin:20px 10px 0px 15px;
	}
	
	/* 왼쪽 main_left의 메뉴들 (내과 외과 )*/
   .main_left_item{
   	border: solid 1px #CBE2B8;
   	width: 95px;
    height: 50px;
    background-color: #CBE2B8;
   }
   .main_left_item h2{
   	padding-top:8px;
   	text-align: center;
   	margin:0px;
   	color: white;
   }
   .none{
   	margin-top:140px;
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
	
	var list1 = function(){ //기본버튼 클릭시 동작할 ajax통신을 갖고있는 함수
		$('#ajaxtest1').empty(); //버튼 누를때마다 계속 누적되는걸 막기위해 한번씩 지워줌
		$('#ajaxtest1').empty();
		$('#ajaxtest1').empty();
// 		$("#ajaxtest3").html("")
		

	$.ajax("/listDept1", {success:function(data){ //ajax통신 응답으로 받아온 데이터를 data라는 변수에 담은것
// 		console.log("기본버튼") 
// 		console.log(data) //객체배열로 넘어오는지 확인
		for(var i in data){ //배열안에있는 객체 수만큼 반복
			var p = document.createElement("p") //각 객체의 내용(레코드한줄)을 담을 p태그. 
			var a = data[i] //반복돌때마다의 객체 하나하나를 a라고 치자.
// 			console.log(a.dept_group)
			
			if(a.dept_group=='내과'){
				for(var j in a){
					var div = document.createElement("div") //span을 담을 div - span은 두개만들예정 : 이미지와 과이름
					var span1 = document.createElement("span") //과이름을 담을 span태그
					var span2 = document.createElement("span") //이미지를 담을 span태그
					if(j=='dept_name'){ //반복중에 칼럼이 dept_name인걸 만났을때만 아랫부분 실행
						var text = document.createTextNode(a[j]) //진료과이름을 문자열로 가져옴
						span1.appendChild(text)//진료과이름을 span태그에 담음
					}
					if(j=='icon'){ //객체 내 반복중에 icon칼럼을 만나면 
						var img = document.createElement("img") //img태그 생성
						img.setAttribute("src", "./image/"+a.icon) // 지금의 객체안에있는 icon칼럼의 속성값을 src에 줌
						img.setAttribute("width", 50) //대충 크기지정
						img.setAttribute("height", 50)
						span2.appendChild(img) //이미지를 span태그에 담음
					}
					p.appendChild(span1)//span태그들을 p태그에 담음
					p.appendChild(span2)
				}
				var test = document.getElementById("ajaxtest1") //ajaxtest1이라는 아이디의 div를 향하는 변수
				test.appendChild(p)//div에 p태그를 담음
			}else if(a.dept_group=='외과'){
				for(var j in a){
					var div = document.createElement("div") //span을 담을 div - span은 두개만들예정 : 이미지와 과이름
					var span1 = document.createElement("span") //과이름을 담을 span태그
					var span2 = document.createElement("span") //이미지를 담을 span태그
					if(j=='dept_name'){ //반복중에 칼럼이 dept_name인걸 만났을때만 아랫부분 실행
						var text = document.createTextNode(a[j]) //진료과이름을 문자열로 가져옴
						span1.appendChild(text)//진료과이름을 span태그에 담음
					}
					if(j=='icon'){ //객체 내 반복중에 icon칼럼을 만나면 
						var img = document.createElement("img") //img태그 생성
						img.setAttribute("src", "./image/"+a.icon) // 지금의 객체안에있는 icon칼럼의 속성값을 src에 줌
						img.setAttribute("width", 50) //대충 크기지정
						img.setAttribute("height", 50)
						span2.appendChild(img) //이미지를 span태그에 담음
					}
					p.appendChild(span1)//span태그들을 p태그에 담음
					p.appendChild(span2)
				}
				var test = document.getElementById("ajaxtest2") //ajaxtest2라는 아이디의 div를 향하는 변수
				test.appendChild(p)//div에 p태그를 담음
			}else { //일반과
				for(var j in a){
					var div = document.createElement("div") //span을 담을 div - span은 두개만들예정 : 이미지와 과이름
					var span1 = document.createElement("span") //과이름을 담을 span태그
					var span2 = document.createElement("span") //이미지를 담을 span태그
					if(j=='dept_name'){ //반복중에 칼럼이 dept_name인걸 만났을때만 아랫부분 실행
						var text = document.createTextNode(a[j]) //진료과이름을 문자열로 가져옴
						span1.appendChild(text)//진료과이름을 span태그에 담음
					}
					if(j=='icon'){ //객체 내 반복중에 icon칼럼을 만나면 
						var img = document.createElement("img") //img태그 생성
						img.setAttribute("src", "./image/"+a.icon) // 지금의 객체안에있는 icon칼럼의 속성값을 src에 줌
						img.setAttribute("width", 50) //대충 크기지정
						img.setAttribute("height", 50)
						span2.appendChild(img) //이미지를 span태그에 담음
					}
					p.appendChild(span1)//span태그들을 p태그에 담음
					p.appendChild(span2)
				}
				var test = document.getElementById("ajaxtest3") //ajaxtest3이라는 아이디의 div를 향하는 변수
				test.appendChild(p)//div에 p태그를 담음
			}
		}
	}}) //ajax통신 끝
	
	} //list1함수 끝

	var list2 = function(){

		$('#ajaxtest1').empty();
		$('#ajaxtest2').empty();
		$('#ajaxtest3').empty();

		$.ajax("/listDept2", {success:function(data){
			console.log("가나다순버튼")
			for(var i in data){
				var p = document.createElement("p")
				var a = data[i]
				for(var j in a){
					var div = document.createElement("div")
					var span1 = document.createElement("span")
					var span2 = document.createElement("span")
					if(j=='dept_name'){
						var text = document.createTextNode(a[j])
						span1.appendChild(text)
					}
					if(j=='icon'){ 
						var img = document.createElement("img")
						img.setAttribute("src", "./image/"+a.icon)
						img.setAttribute("width", 50)
						img.setAttribute("height", 50)
						span2.appendChild(img)
					}
					p.appendChild(span1)
					p.appendChild(span2)
				}
				var test = document.getElementById("ajaxtest1")
				test.appendChild(p)
			}
		}}) //ajax통신 끝
	} //list2함수 끝

	$("#ajaxtest_btn1").click(function(){
		alert("버튼1")
 		list1()
	});
	
	$("#ajaxtest_btn2").click(function(){
		alert("버튼2")
 		list2()
	});
	
	
	
	//호버에 쓰일 진료과 이름배열
	var deptname = ["<h2>호흡기내과</h2>","<h2>순환기내과</h2>","<h2>소화기내과</h2>","<h2>알레르기내과</h2>","<h2>내과(일반)","<h2>간담췌외과</h2>","<h2>위장관외과</h2>","<h2>대장항문외과</h2>","<h2>이식혈관외과","<h2>외과(일반)</h2>","<h2>신경과</h2>","<h2>안과</h2>","<h2>정형외과</h2>","<h2>가정의학과</h2>","<h2>산부인과</h2>"];
	//이미지 이름 소스파일명 배열
	var image =["<img src='./image/1.jpg' class='icon'>","<img src='./image/2.jpg' class='icon'>","<img src='./image/7.jpg' class='icon'>","<img src='./image/4.jpg' class='icon'>","<img src='./image/5.jpg' class='icon'>","<img src='./image/6.jpg' class='icon'>","<img src='./image/7.jpg' class='icon'>","<img src='./image/8.jpg' class='icon'>","<img src='./image/9.jpg' class='icon'>","<img src='./image/10.jpg' class='icon'>","<img src='./image/11.jpg' class='icon'>","<img src='./image/12.jpg' class='icon'>","<img src='./image/13.jpg' class='icon'>","<img src='./image/14.jpg' class='icon'>","<img src='./image/15.jpg' class='icon'>"];
	
	//과 블럭들을 생성하여 과의 숫자만큼 배열을 돌면서 인덱스 속성과 인덱스를 준다
		$.each(deptname, function(idx){
			if (idx <= 4) {
				var div = $("<div id='main_top"+(idx+1)+"'><span>"+image[idx]+"</span><span>"+deptname[idx]+"</span></div>");
				$(div).addClass("main_block");
				$(div).attr("idx",idx);
				$(".main_top").append(div);
			}else if((idx >4)&(idx <=9)){
				var div = $("<div id='main_middle"+(idx+1)+"'><span>"+image[idx]+"</span><span>"+deptname[idx]+"</span></div>");
				$(div).addClass("main_block");
				$(div).attr("idx",idx);
				$(".main_middle").append(div);
			}else if((idx >9)&(idx <=14)){
				var div = $("<div id='main_under"+(idx+1)+"'><span>"+image[idx]+"</span><span>"+deptname[idx]+"</span></div>");
				$(div).addClass("main_block");
				$(div).attr("idx",idx);
				$(".main_under").append(div);
			}
		});
	
	/*
	var mouseIn = function(idx,id){	
		$("#"+id).addClass("main_hover");
		$("#"+id).empty();
		$("#"+id).append("<span><h3>"+deptname[idx]+"</h3></span>");
		$("#"+id).append("<span><img src='./image/doc22.jpg' class='icon2'></span>");
		$("#"+id).append("<span><img src='./image/r.jpg' class='icon2'></span>");
		$("#"+id).append("<span><h4>의료진</h4></span>");
		$("#"+id).append("<span><h4>예약</h4></span>");
	}
	var mouseOut = function(idx,id){
		$(".main_block").removeClass("main_hover");
		$("#"+id).empty();
		$("#"+id).append("<span>"+image[idx]+"</span>");
		$("#"+id).append("<span>"+deptname[idx]+"</span>");	
	}
	*/
	
	$(document).on("mouseenter",".main_block",function(){
		// on안에 (이벤트 이름, 대상자, 함수)
		// 미래에 만들어진 노드에도 이벤트를 설정하는 방법(이미 만들어진 노드 포함)
		 $(this).empty();
		 $(this).addClass("main_hover");
		 
		 var idx = $(this).attr("idx");
		 $(this).append("<span><h3>"+deptname[idx]+"</h3></span>");
		 $(this).append("<span><img src='./image/doc22.jpg' class='icon2'></span>");
		 $(this).append("<span><img src='./image/r.jpg' class='icon2'></span>");
		 $(this).append("<span><h4><a href='listDoctor'>의료진</a></h4></span>");
		 $(this).append("<span><h4>예약</h4></span>");
		/*
		var idx = $(this).attr("idx");
		var id = $(this).attr("id");
		mouseIn(idx,id);*/
	});

	$(document).on("mouseleave",".main_hover",function(){
		$(this).empty();
		var idx = $(this).attr("idx");
		$(this).append("<span>"+image[idx]+"</span>","<span>"+deptname[idx]+"</span>");
		$(this).removeClass("main_hover");
	});
	
	
	
	//꼼수 부분- 다른줄로 옮겨가면 현재줄에서 mouseleave가 먹지 않은 부분을 치워버림 - 없어도 되는 코드
	$(document).on("mouseleave",".main_top",function(){
		$(this).empty();
		$(this).removeClass("main_hover");
		$.each(deptname, function(idx){
			if (idx <= 4) {
				var div = $("<div id='main_top"+(idx+1)+"'><span>"+image[idx]+"</span><span>"+deptname[idx]+"</span></div>");
				$(div).addClass("main_block");
				$(div).attr("idx",idx);
				$(".main_top").append(div);
			}
		});
	});
	$(document).on("mouseleave",".main_middle",function(){
		$(this).empty();
		$(this).removeClass("main_hover");
		$.each(deptname, function(idx){
			if((idx >4)&(idx <=9)){
				var div = $("<div id='main_middle"+(idx+1)+"'><span>"+image[idx]+"</span><span>"+deptname[idx]+"</span></div>");
				$(div).addClass("main_block");
				$(div).attr("idx",idx);
				$(".main_middle").append(div);
			}
		});
	});
	$(document).on("mouseleave",".main_under",function(){
		$(this).empty();
		$(this).removeClass("main_hover");
		$.each(deptname, function(idx){
			if((idx >9)&(idx <=14)){
				var div = $("<div id='main_under"+(idx+1)+"'><span>"+image[idx]+"</span><span>"+deptname[idx]+"</span></div>");
				$(div).addClass("main_block");
				$(div).attr("idx",idx);
				$(".main_under").append(div);
			}
		});
	});
	//꼼수 끝
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
  		<h1 style="font-size: 23px;" class="leftTop">진료과/의료진</h1>		<!-- 메뉴 이름 (페이지마다 다르게 지정) -->
		  <li class="side_li"><a href="">진료과</a></li>			<!-- 사이드 메뉴 이름 (페이지마다 다르게 지정) -->
		  <li class="side_li"><a href="">의료진</a></li>
		  
		  

		</ul>
  	</div>
  	
  	<!-- //sidebar -->
     	
     	</div>
     
     <!-- 메인 -->
     <section>
     <div class="column middle">
     	<div id="nameDiv">
     	<span><h1 id="name">진료과</h1></span>
     	</div>
     	<!-- 진료과 위에 검색이랑 정렬 놓는 부분 -->
     	<div class="main_search">
     	
     	<!-- 버튼테스트용 -->
     	<div>
     		<button id="ajaxtest_btn1">기본</button>
     		<button id="ajaxtest_btn2">가나다순</button>
     	</div>
     		<span class="search_radio">
	     		<label class="container">
					<input type="radio" name="array" checked="checked"/>
					<span class="checkmark1"></span>
					<font size="3">기본</font>
				</label>
				<label class="container">
					<input type="radio" name="array"/>
					<span class="checkmark1"></span>
					<font size="3">가나다순</font>
				</label>
			</span>
     		<div class="search">
     			<input class="text" type="text" placeholder="진료과 또는 질병명을 입력해주세요">
     			<button class="btnSearch">검색</button>
     		</div>
     	</div>
     	
     	<div id="ajaxtest1" style="border: 1px solid black"></div>
     	<div id="ajaxtest2" style="border: 1px solid black"></div>
     	<div id="ajaxtest3" style="border: 1px solid black"></div>
	    
	     	<div class="main_left">
	     	<!-- 왼쪽에 외과,내과,일반과 팻말 -->
	     		<div class="main_left_item">
	     			<span><h2>내과</h2></span>
	     		</div>
	     		<!-- none은 그냥 빈 공간용 -->
	     		<div class="none">
	     			<span></span>
	     		</div>
	     		<div class="main_left_item">
	     			<span><h2>외과</h2></span>
	     		</div>
	     		<div class="none">
	     			<span></span>
	     		</div>
	     		<div class="main_left_item">
	     			<span><h2>일반과</h2></span>
	     		</div>
	     		</div>
	        <div class="main_top">
	       
	        </div>
	        
	        <div class="main_middle">
	        
	        </div> 
	           
	      <div class="main_under">
	         
	       </div>   
	         
	      </div>
	        
	     
   <div class="column side" id="column_side_right" > </div>
   </section>
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