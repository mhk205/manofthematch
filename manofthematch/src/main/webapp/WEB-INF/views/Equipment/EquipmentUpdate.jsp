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

<title>비품 수정</title>

</head>
<body>

	<!-- Module 의 Top2.jsp 를 include 합니다 -->	
	<c:import url="../Module/Top.jsp"/>

<h1>팀 비품 수정</h1>
<form name="EquipmentUpdate" id="EquipmentUpdate" action="${pageContext.request.contextPath}/EquipmentUpdate" method="post"><br><br>
	<div class="form-group">
			<label class="col-sm-2 control-label" for="teamName"> 팀 명 </label>
				<div class="col-sm-3">
			<input class="form-control" name="teamName" id="teamName" type="text" value="${Equipment.teamName}" readonly="readonly"/>
				</div>
		</div>
		
			<div class="row">
			</div>
			<br>

	<div class="form-group">
			<label class="col-sm-2 control-label" for="equipmentBall"> 축구공 </label>
				<div class="col-sm-3">
			<input class="form-control" name="equipmentBall" id="equipmentBall" type="text" value="${Equipment.equipmentBall }"/>
				</div>
		</div>
		
			<div class="row">
			</div>
			<br>


	<div class="form-group">
			<label class="col-sm-2 control-label" for="equipmentUniform"> 유니폼</label>
				<div class="col-sm-3">
			<input class="form-control" name="equipmentUniform" id="equipmentUniform" type="text" value="${Equipment.equipmentUniform }"/>
				</div>
		</div>
		
			<div class="row">
			</div>
			<br>
			
			
		<div class="form-group">
			<label class="col-sm-2 control-label" for="equipmentVest"> 팀 조끼 </label>
				<div class="col-sm-3">
			<input class="form-control" name="equipmentVest" id="equipmentVest" type="text" value="${Equipment.equipmentVest }"/>
				</div>
		</div>
		
			<div class="row">
			</div>
			<br>
			
		<div class="form-group">
			<label class="col-sm-2 control-label" for="equipmentMedicine"> 구급약 </label>
				<div class="col-sm-3">
			<input class="form-control" name="equipmentMedicine" id="equipmentMedicine" type="text" value="${Equipment.equipmentMedicine }"/>
				</div>
		</div>
		
			<div class="row">
			</div>
			<br>		
			
		<div class="form-group">
			<label class="col-sm-2 control-label" for="equipmentCorn"> 훈련용 콘 </label>
				<div class="col-sm-3">
			<input class="form-control" name="equipmentCorn" id="equipmentCorn" type="text" value="${Equipment.equipmentCorn }"/>
				</div>
		</div>
		
			<div class="row">
			</div>
			<br>		
			
		<div class="form-group">
			<label class="col-sm-2 control-label" for="equipmentGlove"> 골키퍼 장갑 </label>
				<div class="col-sm-3">
			<input class="form-control" name="equipmentGlove" id="equipmentGlove" type="text" value="${Equipment.equipmentGlove }"/>
				</div>
		</div>
		
			<div class="row">
			</div>
			<br>
		<div class = text-center>	
		<button type="submit" class="btn btn-success" value="submit">수정 완료!</button>					
		</div>
</form>
</body>
</html>