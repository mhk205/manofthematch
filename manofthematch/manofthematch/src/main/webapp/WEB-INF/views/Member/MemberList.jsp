<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- bootstrap 사용선언 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<!-- css 사용 선언-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Main.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<title>Man Of The Match</title>
 
</head>
<body>
	
	<div class="container">
		<!-- Module 의 Top2.jsp 를 include 합니다 -->	
		<c:import url="../Module/Top.jsp"/>
	    <h4>회원 리스트 페이지 입니다</h4>
	    <table class="table">
	        <thead>
	            <tr>
	                <td>no</td><td>id</td><td>pw</td>
	            </tr>
	        </thead>
	        <tbody>
	            <c:forEach var="u" items="${userList}">
	                <tr>
	                    <td>${u.userNo}</td><td>${u.userId}</td><td>${u.userPw}</td>
	                </tr>
	            </c:forEach>
	        </tbody>
	    </table>
	    <!-- 아이디 검색 -->
	    <div>
	        <form action="/userList">
	            아이디 검색 : <input type="text" name="word"/><input type="submit"/>
	        </form>
	    </div>
	    <!-- 페이징 -->
	    <div>
	        <c:if test="${page>1}">
	            <a href="/userList?page=${page-1}">이전</a>
	        </c:if>
	        
	        ${page}
	        
	        <c:if test="${page<lastPage}">
	            <a href="/userList?page=${page+1}">다음</a>
	        </c:if>
	    </div>
	</div>
</body>
</html>

