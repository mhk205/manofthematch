<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->	
	<meta name="description" content="">
	<meta name="author" content="">

	<title>Man Of The Match</title>

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
</head>

<body>
	<div class="container">
	<!-- Module 의 Top2.jsp 를 include 합니다 -->	
		<c:import url="../Module/Top.jsp"/>

		<!-- Jumbotron -->
		<div class="jumbotron"></div>

		<!-- Example row of columns -->
		<div class="row" align="left">
			<div class="container">
				<c:forEach items="${MatchList}" var="M">			
				<div class="col-md-12"><h4><span class="glyphicon glyphicon glyphicon-play"></span>${M.matching_title}</h4></div>		
					</c:forEach>
					<div class="col-md-12 well" style="color: ivory; width: 550px; height: 250px; background-image: url('resources/image/BkPage.jpg'); background-size: 100%;">
						<div class="row">
							<div class="col-sm-2">Emblem</div>
							<c:forEach items="${PlayerList}" var="P">
							<div class="col-sm-8"> </div>
							<div class="col-sm-2">TEAM. ${P.team_name}</div>
							</c:forEach>
						</div>
						<c:forEach items="${GroundList}" var="G">							
						<div class="col-sm-12" style="text-align: center;">${G.ground_name}</div>							
						</c:forEach>
						<hr style="border-top-color: white; size: 2px">							
						<c:forEach items="${MatchList}" var="M">
						<div class="col-md-12">${M.matching_status_condition}</div>
						</c:forEach>
						<hr style="border-top-color: white; size: 2px">	
						<c:forEach items="${MatchList}" var="M">						
						<div class="col-sm-4">No.${M.mathcing_no}</div>
						<div class="col-sm-4" style="text-align: center;">${M.member_id}</div>
						<div class="col-sm-4" style="text-align: right;">${M.mathcing_date}</div>
						</c:forEach>
						<div class="col-md-1">Contents</div>
												
					</div>						
				<!-- 매칭 신청 버튼을 누르면 대기자 목록으로 뜨거나 혹은 매칭을 신청한 사람에게 연락이 가도록 만들것. 시간 없으면 바로 매칭 가능으로 변경할것. -->			
			</div>												
		</div>
		<c:forEach items="${MatchList}" var="M">
		<c:if test="${!empty loginfor.memberId}">
			<c:if test="${loginfor.memberId ne M.member_id}">
				<c:if test="${M.matching_status_condition eq '대기'}">			
					<input class="col-md-1" name="MatchListupdate" id="MatchListupdate" type="button" value="매칭 신청" onclick="location.href='MatchListupdate?param=${M.mathcing_no}';" style="width: 275px; color: white; background-color: black;">
				</c:if>
			</c:if>		
			<c:if test="${loginfor.memberId eq M.member_id}">
				<input class="col-md-1" name="MatchListRemove" id="MatchListRemove" type="button" value="삭 제" onclick="location.href='MatchListRemove?param=${M.mathcing_no}';" style="width: 275px; color: white; background-color: black;">
			</c:if>
		</c:if>	
		</c:forEach>	
		<!-- Site footer -->
		<footer class="footer">
			<p>&copy; Company 2017</p>
		</footer>

	</div> 
	<!-- /container -->

	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
