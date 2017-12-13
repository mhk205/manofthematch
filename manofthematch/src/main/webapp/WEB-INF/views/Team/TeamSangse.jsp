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
<title>Man Of The Match</title>	
</head>
<body>
	<!-- Module 의 Top2.jsp 를 include 합니다 -->	
		<c:import url="../Module/Top.jsp"/><br>
	
	
    <div class="container">

      <div class="row row-offcanvas row-offcanvas-right">

        <div class="col-xs-12 col-sm-9">
          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>
          <div class="jumbotron" style="background-image:URL(resources/image/arsenal.png); background-repeat:no-repeat; background-position:center center; background-size:1000px 300px; " align=center>
 
          </div>
		<form name="TeamSangse" id="TeamSangse" action="${pageContext.request.contextPath}/TeamSangse" method="post"><br><br>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="teamName"> 팀 명 </label>
			<div class="col-sm-3">
				<input class="form-control" name="teamName" id="teamName" type="text" value="${Team.teamName}" readonly="readonly"/>
			</div>
			
			</div>
		
			<div class="row">
			</div>
			<br>
			
			<div class="form-group">
				<label class="col-sm-2 control-label" for="teamGradeNo"> 팀 등급 </label>
					<div class="col-sm-3">
				<input class="form-control" name="teamGradeNo" id="teamGradeNo" type="text" readonly="readonly" value="${Team.teamGradeNo } 등급"/>
					</div>
			</div>
		
			<div class="row">
			</div>
			<br>
			
			<div class="form-group">
				<label class="col-sm-2 control-label" for="localNo"> 지역 </label>
					<div class="col-sm-3">
				<input class="form-control" name="localNo" id="localNo" type="text" readonly="readonly" value="${Team.localNo }"/>
					</div>
			</div> 
		
			<div class="row">
			</div>
			<br>
			
			<div class="form-group">
				<label class="col-sm-2 control-label" for="teamPlaytype"> 경기 유형 </label>
					<div class="col-sm-3">
				<input class="form-control" name="teamPlaytype" id="teamPlaytype" type="text" readonly="readonly" value="${Team.teamPlaytype }"/>
					</div>
			</div>
		
			<div class="row">
			</div>
			<br>
			
			<div class="form-group">
				<label class="col-sm-2 control-label" for="teamEmblem"> 팀 엠블럼 </label>
					<div class="col-sm-3">
				<input class="form-control" name="teamEmblem" id="teamEmblem" type="file" value="${Team.teamEmblem }"/>
					</div>
			</div>
		
			<div class="row">
			</div>
			<br>
		</form>
          
          <h3>전통을 자랑하는 Arsenal 팀 입니다!</h3>
            <b>서울 사회인 축구 랭킹 1위 입니다</b>
          <div class="row">
            <div class="col-xs-6 col-lg-4">
              <h2>매칭일정</h2>
              <p>우리팀 의 매칭일정을 확인 해보세요</p>
              <p><a class="btn btn-default" href="MatchIndex" role="button">확인하기 &raquo;</a></p>
            </div><!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-4">
              <h2>공지사항</h2>
              <p>공지사항을 확인 해보세요</p>
              <p><a class="btn btn-default" href="#" role="button">확인하기 &raquo;</a></p>
            </div><!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-4">
              <h2>부상자명단</h2>
              <p>지난 경기에 부상을 당한 선수 명단 입니다</p>
              <p><a class="btn btn-default" href="#" role="button">확인하기 &raquo;</a></p>
            </div><!--/.col-xs-6.col-lg-4-->
            <div class="col-xs-6 col-lg-4">
              <h2>훈련계획</h2>
              <p>훈련계획을 세워 강한 팀으로 한단계 성장 할수 있습니다</p>
              <p><a class="btn btn-default" href="#" role="button">확인하기 &raquo;</a></p>
            </div><!--/.col-xs-6.col-lg-4-->
            
          </div><!--/row-->
        </div><!--/.col-xs-12.col-sm-9-->
        <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
          <div class="list-group">
            <a href="#" class="list-group-item active">팀소개</a>
            <a href="#" class="list-group-item">공지사항</a>
            <a href="#" class="list-group-item">전술현황판</a>
            <a href="#" class="list-group-item">장부관리</a>
            <a href="${pageContext.request.contextPath}/PlayerListOne?teamName=${Player.teamName}" class="list-group-item">팀원소개</a>
            <a href="#" class="list-group-item">부상자명단</a>
            <a href="MatchIndex" class="list-group-item">매칭일정</a>
            <a href="${pageContext.request.contextPath}/TeamEquipmentListOne?teamName=${Team.teamName}" class="list-group-item" >비품관리</a>
     
          </div>
        </div><!--/.sidebar-offcanvas-->
      </div><!--/row-->
      <hr>

      <footer>
        <p>&copy; Company 2017</p>
      </footer>

    </div><!--/.container-->	

</body>
</html>