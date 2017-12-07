<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<!-- Module 의 Top2.jsp 를 include 합니다 -->	
		<c:import url="../Module/Top.jsp"/>
		<h1> 팀 생성 </h1>
		<form name="TeamInsertForm" id="TeamInsertForm" action="${pageContext.request.contextPath}/TeamAdd" method="post"><br><br>
	
		<div class="form-group" >
				<label class="col-sm-2 control-label" for="teamName">팀 명 </label>
					<div class="col-sm-3">
				<input class="form-control" name="teamName" id="teamName" type="text" placeholder="팀명을 입력하세요."/>
					</div>
		</div>
		<br>
		
			<div class="row">
			</div>
			<br>

		<div class="form-group">
			<label class="col-sm-2 control-label" for="localNo">지역  </label>
				<div class="col-sm-3">
					<select class="form-control">
						<option>---선택---</option>
						<option>서울 특별시</option>
						<option>인천 광역시</option>
						<option>대전 광역시</option>
						<option>대구 광역시</option>
						<option>부산 광역시</option>
						<option>울산 광역시</option>
						<option>제주특별자치도</option>
						<option>경기도</option>
						<option>강원도</option>
						<option>충청도</option>
						<option>전라도</option>
						<option>경상도</option>
					</select>
				</div>
		</div>
		
			<div class="row">
			</div>
			<br>
			
		<div class="form-group">
			<label class="col-sm-2 control-label" for="teamGradeNo">팀 등급  </label>
				<div class="col-sm-3">
					<select class="form-control">
						<option>---선택---</option>
						<option>1 등급</option>
						<option>2 등급</option>
						<option>3 등급</option>
						<option>4 등급</option>
						<option>5 등급</option>
					</select>
				</div>
		</div>
		
			<div class="row">
			</div>
			<br>
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="teamPlaytype">경기유형 </label>&nbsp;&nbsp;&nbsp;
			축구 <input name="teamPlaytype" id="teamPlaytype" type="radio" value="축구"/>
			풋살 <input name="teamPlaytype" id="teamPlaytype" type="radio" value="풋살"/>
		</div>
		
			<div class="row">
			</div>
			<br>

		
		 <div class="form-group">
		    <label class="col-sm-2 control-label" for="teamEmblem">팀 엘블럼</label>
		    <input type="file" id="teamEmblem">
	    </div>
    
      <button type="submit" class="btn btn-success" value="submit">가입완료!</button>
				
	</form>

	</div>

</body>
</html>