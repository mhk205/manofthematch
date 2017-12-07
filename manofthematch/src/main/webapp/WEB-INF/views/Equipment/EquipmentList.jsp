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

<title>팀 비품 리스트</title>
</head>
<body>

	<!-- Module 의 Top2.jsp 를 include 합니다 -->	
	<c:import url="../Module/Top.jsp"/>
	
<h1>팀 비품 리스트</h1>
	<table class="table">
		<tr>
			<th>팀 이름</th>
			<th>축구공</th>
			<th>유니폼</th>  
			<th>팀 조끼</th>
			<th>구급약</th>
			<th>훈련용 콘</th>
			<th>골키퍼 장갑</th>
			<th>비품 수정</th>
		</tr>
		<c:forEach items="${EquipmentList }" var="Equipment">
			<tr>
				<td>${Equipment.teamName }</td>
				<td>${Equipment.equipmentBall }</td>
				<td>${Equipment.equipmentUniform }</td>
				<td>${Equipment.equipmentVest }</td>
				<td>${Equipment.equipmentMedicine }</td>
				<td>${Equipment.equipmentCorn }</td>
				<td>${Equipment.equipmentGlove }</td>
				<td><a class="btn-default btn-sm" href="${pageContext.request.contextPath}/EquipmentUpdate?teamName=${Equipment.teamName}">수정</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>