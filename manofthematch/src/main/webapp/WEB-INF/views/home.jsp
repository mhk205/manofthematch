<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Man Of The Match</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- bootstrap 사용선언 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- css 사용 선언-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Main.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
   
    
	    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
	    .row.content {height: 450px}
	    
	    /* 회색으로 셋팅된 background color 와 100% height로 설정된 sidenav메뉴 */
	    .sidenav {
	      padding-top: 20px;
	      background-color: white;
	      height: 100%;
	    }
	    
	    /* 검은색으로 셋팅된 background color와, 하얀색 text 그리고 some padding */
	    footer {
	      background-color: black;
	      color: white;
	      padding: 15px;
	    }
	    
	    /* On small screens, set height to 'auto' for sidenav and grid */
	    @media screen and (max-width: 767px) {
	      .sidenav {
	        height: auto;
	        padding: 15px;
	      }
	      .row.content {height:auto;} 
	    }
   
	</style> 
</head> 

<body>
	
  	<div class="navbar navbar-inverse">
  		<!-- 로고 이미지를 삽입 합니다 -->
  			<img src="resources/image/logo3.jpg"  width=100 height=50 align=left> 
  		<!-- Module 의 Top.jsp 를 include 합니다 -->	
  			<c:import url="Module/Top.jsp"/>
  	</div>
  	
  	 		<!-- 왼쪽의 sidenav 메뉴를 작성합니다. -->
			<div class="container-fluid text-center">    
  				<div class="row content">
 					<div class="col-sm-2 sidenav">
 						<!-- Module 의 Left.jsp 를 include 합니다 -->
 							<c:import url="Module/Left.jsp"/>
    				</div>
    
    					<!-- 메인화면의 본문을 작성합니다. -->
    						<div class="col-sm-8 text-left">
    							<h1>Man Of The Match에 오신 것을 환영합니다!</h1>
      								<p>Man Of The Match 는 사회인 축구팀 경기 매칭 사이트 입니다. 당신의 지역에 소속되어 있는 여러 팀들을 찾아, 매칭을 진행하여 보세요!</p>
      									<!-- 본문에 이미지 추가 -->
      										<img src="https://img.grouponcdn.com/deal/ggqRR5SYbPJkfW1B3gLn/TS-8000x4800.jpg/v1/c700x420.jpg">
      									<hr>
      									<!--메인화면 본문의 하단에 텍스트를 작성합니다.  -->
      							<h3>미니매칭결과(Ajax이용)</h3>
      								<p>17.11.11 전주 "잘했군"팀 과 "못했군"팀 의 매칭 결과 3:1 로 "잘했군"팀 이 승리 하였습니다.<br>
										17.11.12 서울 "으라차차"팀 과 "백마축구단"팀 의 매칭 결과 0:2 로 "백마축구단"팀 이 승리 하였습니다.</p>
    						</div>
    		<!-- 오른쪽 sidenav 메뉴를 작성합니다. --> 
    		<div class="col-sm-2 sidenav">
    				<!-- Module 의 Right.jsp 를 include 합니다 -->
      						<c:import url="Module/Right.jsp"/>
    		</div> 
  			</div> 
			</div>
			<!-- 가장 하단의 footer 를 작성합니다. -->
			<footer class="container-fluid text-center">
					<!-- Module 의 Footer.jsp 를 include 합니다 -->
  							<c:import url="Module/Footer.jsp"/>
			</footer>

</body>
</html>
