<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<style>
	    /* Remove the navbar's default margin-bottom and rounded borders */ 
	    .navbar {
	      margin-bottom: 0;
	      border-radius: 0;
	    }
	    /* 부트스트랩의 설정을 !important; 로 제거 한 후 다른 설정을 넣습니다 */
	    .navbar a{color: #fff !important;}
	    .navbar a:hover{color: #F2CB61 !important;}
</style>

<title>Insert title here</title>

</head>

<body>
	<!-- 상단메뉴 작성 -->
<c:choose>
	<c:when test="${not empty sessionScope.userLogin }">
	<nav class="navbar navbar-inverse" style="background-color:#58AA52;">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>                        
	      </button>
	     </div>
	    </div>
	   </nav>
	  </c:when>
	   
   <c:otherwise>
	    <div class="collapse navbar-collapse" id="myNavbar"> 
	    <!-- 상단의 navbar 메뉴를 작성 합니다. -->
	      <ul class="nav navbar-nav">
	      	<!-- li 안에 class 에 active를 넣어주면 검은바 가 메뉴명 뒤에 생성됩니다 -->
	        <li class=""><a href="#">홈</a></li>
	        <li><a href="#">팀</a></li>
	        <li><a href="#">매칭</a></li>
	        <li><a href="#">커뮤니티</a></li>
	        <li><a href="#">랭킹</a></li>
	        <li><a href="#">개인정보</a></li>
	     </ul>
	      <!-- 상단의 맨오른쪽 끝 로그인 부분을 작성합니다. -->
	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
	      </ul>
	    </div>
  </c:otherwise>
 </c:choose>
</body>
</html>