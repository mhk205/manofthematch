<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 상단 메뉴를 작성합니다 -->
		<div class="masthead" style="background-image:URL(resources/image/); background-repeat:no-repeat; background-position:center center; background-size:1150px 100px;">
		     <h3 class="text-muted"><img src="${pageContext.request.contextPath}/resources/image/logo2.png" width=50 height=50 align=left">Man Of The Match</h3>
		        	<nav>
			          <ul class="nav nav-justified">
			            <li class="active"><a href="Home">Home</a></li>
			            <li><a href="#">팀</a></li>
			            <li><a href="#">매칭</a></li>
			            <li><a href="#">게시판</a></li>
			            <li><a href="#">랭킹</a></li>
			            <li><a href="#">Mypage</a></li>
			            <li><a href="MemberAdd"><span class="glyphicon glyphicon-log-in"></span>회원가입</a></li>
					    <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span>로그인</a></li>
			          </ul>
		        	</nav>
		  </div>
		

</body>
</html>