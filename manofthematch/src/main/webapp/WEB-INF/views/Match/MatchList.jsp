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
			<h2>매칭 게시판</h2>         
				<table class="table table-striped table-bordered" style="text-align: center">
					<tbody>
						<tr>
							<td class="col-sm-1">번호</td>
							<td class="col-sm-6">제목</td>
							<td class="col-sm-2">작성자</td>
							<td class="col-sm-1">상황</td>
							<td class="col-sm-2">경기 날짜</td>							
						</tr>					
					<c:forEach items="${MatchList}" var="M">
						<tr>
							<td>${M.mathcing_no}</td>
							<td><a href="Detail?param=${M.mathcing_no}">${M.matching_title}</a></td>
							<td>${M.member_id}</td>							
							<td>${M.matching_status_condition}</td>												
							<td>${M.mathcing_date}</td>
						</tr>
					</c:forEach>	
													    
					</tbody>
				</table>
			</div>			
		</div>
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
