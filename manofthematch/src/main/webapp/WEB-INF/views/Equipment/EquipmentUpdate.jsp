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