<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- css 사용 선언-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Main.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>팀 리스트</title>
</head>
<body>
	<!-- Module 의 Top2.jsp 를 include 합니다 -->	
		<c:import url="../Module/Top.jsp"/>
	<h1>팀 리스트</h1>
	<table class="table">
		<tr>
			<th>팀 이름</th>
			<th>팀 경기 유형</th>
			<th>팀 정보</th>  
			<th>가입 신청</th>
		</tr>
		<c:forEach items="${TeamList }" var="Team">
			<tr>
				<td>${Team.teamName }</td>
				<td>${Team.teamPlaytype }</td>
				<td><a class="btn-default btn-sm" href="TeamSangse">둘러보기</a></td>
				<td><a class="btn-default btn-sm" href="=">가입 신청</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>


