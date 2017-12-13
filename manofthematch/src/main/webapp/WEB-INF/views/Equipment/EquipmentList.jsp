<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	 <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- Custom styles for this template -->
    <link href="justified-nav.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->   
    
  
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