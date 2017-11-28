<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 상단 메뉴를 작성합니다 -->
		<div class="btn-group">
		     <h3 class="text-muted"><img src="${pageContext.request.contextPath}/resources/image/logo2.png" width=50 height=50 align=left">Man Of The Match</h3>
		        	<nav>
			          <ul class="nav nav-justified">
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
		  </div>
		

</body>
</html>