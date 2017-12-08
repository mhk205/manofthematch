<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- bootstrap 사용 선언 -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
  <!-- css 사용 선언-->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Main.css" />
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
	<!-- 상단 메뉴를 작성합니다 -->
	<h3 class="text-muted"><img src="${pageContext.request.contextPath}/resources/image/logo2.png" width=50 height=50 align=left">Man Of The Match</h3>
	<div class="btn-group">
		<nav>
			<ul class="nav nav-justified">
				<li class="active"><a href="Home"><span class="glyphicon glyphicon-home">&nbsp;</span>Home</a></li>
				<c:choose>
					<c:when test="${session.getAttribute('SID') == null}">
						<li><a href="MemberAdd"><span class="glyphicon glyphicon-hand-right">&nbsp;</span>회원가입</a></li>
						<li><a href="Login"><span class="glyphicon glyphicon-log-in">&nbsp;</span>로그인</a></li>
					</c:when>
					<c:when test="${session.getAttribute('SID') != null}">
						<li><span class="glyphicon glyphicon-hand-right">&nbsp;</span>${Session.getAttribute("SID")}님 환영합니다.</li>
					</c:when>
				</c:choose>
					
							
			</ul>
		</nav>
	</div>			
				
	<br><br>			
				
	<div class="btn-group btn-group-justified dropdown" role="group" aria-label="false">
		<div class="btn-group" role="group">
			<button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
				<span class="glyphicon glyphicon-user"> 팀  </span>
			</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">팀 정보</a></li>
						<li><a href="#">팀생성</a></li>
						<li><a href="#">팀 리스트</a></li>
						<li class="divider"></li>
						<li><a href="#">팀 비품관리</a></li> 
					</ul>
		</div>
		
		<div class="btn-group" role="group">
			<button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
				<span class="glyphicon glyphicon-ok-sign"> 매치보드  </span>
			</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="MatchAdd">매치</a></li>
						<li><a href="MatchIndex">매치 일정</a></li>
						<li><a href="MatchList">매치 리스트</a></li>
					</ul>
		</div>
		
		<div class="btn-group" role="group">
			<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
				<span class="glyphicon glyphicon-pencil"> 게시판 </span>
			</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">일반 게시판</a></li>
						<li><a href="#">기술 게시판</a></li>
						<li><a href="#">정보 게시판</a></li>
						 
					</ul>
		</div>
		
		<div class="btn-group" role="group">
			<button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
				<span class="glyphicon glyphicon-king"> 랭킹 </span>
			</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">팀 랭킹</a></li>
						<li><a href="#">선수 랭킹</a></li>
						<li><a href="#">토너먼트 랭킹 포인트</a></li>
						 
					</ul>
		</div>
		
		<div class="btn-group" role="group">
			<button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
				<span class="glyphicon glyphicon-cog"> Mypage </span>
			</button>
					<ul class="dropdown-menu btn-info" role="menu">
						<li><a href="#">나의 기록보기</a></li>
						<li><a href="#">포인트 내역</a></li>
						<li><a href="#">포인트 사용내역</a></li>
						
					</ul>
		</div>
			
	</div> 
  




		<!-- 				<ul>
			            <li class="active"><a href="Home"><span class="glyphicon glyphicon-home">&nbsp;</span>Home</a></li>
			            <li><a href="#"><span class="glyphicon glyphicon-user">&nbsp;</span>팀</a></li>
			            <li><a href="#"><span class="glyphicon glyphicon-ok-sign">&nbsp;</span>매칭</a></li>
			            <li><a href="#"><span class="glyphicon glyphicon-pencil">&nbsp;</span>게시판</a></li>
			            <li><a href="#"><span class="glyphicon glyphicon-king">&nbsp;</span>랭킹</a></li>
			            <li><a href="#"><span class="glyphicon glyphicon-cog">&nbsp;</span>Mypage</a></li>
			            <li><a href="MemberAdd"><span class="glyphicon glyphicon-hand-right">&nbsp;</span>회원가입</a></li>
					    <li><a href="Login"><span class="glyphicon glyphicon-log-in">&nbsp;</span>로그인</a></li>
					</ul>
		        	</nav> 
		  </div> -->

  
</body>
</html>