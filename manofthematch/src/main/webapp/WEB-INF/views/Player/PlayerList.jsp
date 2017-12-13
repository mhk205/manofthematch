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
<title>팀 리스트</title>
</head>
<body>
	<!-- Module 의 Top2.jsp 를 include 합니다 -->	
		<c:import url="../Module/Top.jsp"/>
<div class="row" style="margin-left: 50px">		
	<h1>선수 리스트</h1>
	<table class="table">
		<tr>
			<th>이름</th>
			<th>팀 이름</th>
			<th>선수등급</th>  
			<th>포지션</th>
			<th>선수 등번호</th>
			<th>선출여부</th>
			<th>체력등급</th>
			<th>축구경력</th>
		</tr>
		<c:forEach items="${PlayerList }" var="Player">
			<tr>
				<td>${Player.memberNo }</td>
				<td>${Player.teamName }</td>
				<td>${Player.playGradeNo }등급</td>
				<td>${Player.positionNo }</td>
				<td>${Player.playerBackno }번</td>
				<td>${Player.playerPlayerstatus }</td>
				<td>${Player.strengthNo }등급</td>
				<td>${Player.footballCareerNo }년</td>
			</tr>
		</c:forEach>
	</table>
</div>	
</body>
</html>

