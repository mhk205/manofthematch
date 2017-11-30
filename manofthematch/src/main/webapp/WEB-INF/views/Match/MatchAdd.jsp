<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      <div class="jumbotron">
      
      </div>

<!-- Example row of columns -->
	<div class="row" style="margin-left: 50px">
		<h1>매칭 등록</h1>
			<form name="MatchForm" id="MatchForm" action="${pageContext.request.contextPath}/MatchInsert" method="post"><br><br>
				<!-- 매칭 번호: 자동으로 입력되는 값. 지금은 표기용으로 나타내지만, 이후 type을 hidden으로 변경해줄것. -->
				<div class="form-group">
					<label class="col-sm-2 control-label" for="matching_title">매칭제목</label>
						<div class="col-sm-3">
							<input class="form-control" name="matching_title" id="matching_title" type="text" />
						</div>
				</div><br>
				<div class="row"></div><br>
				<!-- 매칭 번호: 자동으로 입력되는 값. 지금은 표기용으로 나타내지만, 이후 type을 hidden으로 변경해줄것. -->
				<div class="form-group">
					<label class="col-sm-2 control-label" for="mathcing_no">매칭번호</label>
						<div class="col-sm-3">
							<input class="form-control" name="mathcing_no" id="mathcing_no" type="hidden" readonly="readonly" value="" />
						</div>
				</div><br>
				<div class="row"></div><br>
				<!-- 매칭 날짜: 변경사항 없음 -->
				<div class="form-group">
					<label class="col-sm-2 control-label" for="mathcing_date">매칭날짜 </label>
						<div class="col-sm-3">
							<input class="form-control" type="Date" name="mathcing_date" id="mathcing_date" />
						</div>
				</div><br>
				<!-- 구장번호: Ground 쪽에서 db 가져와서 선택하게 할것. -->
				<div class="row"></div><br> 
					<label class="col-sm-2 control-label" for="ground_no">구장번호 </label>
						<div class="col-sm-3">
							<select class="form-control" name="ground_no" id="ground_no">
							<c:forEach items="${GroundList}" var="G">								
									<option value="${G.ground_no}">${G.ground_name}</option>								
							</c:forEach>
							</select>
						&nbsp;
						</div><br>				
				<div class="row"></div><br>
				<div class="form-group">
				<!-- 등급차이는, 등록기준 상태로 1이 기본 값이며, 차후 리스트에서 성사된 팀의 등급과의 차이를 통해 계산되어 변경되도록 한다. 역시 타입을 hidden으로 변경해준다. -->
					<label class="col-sm-2 control-label" for="reward_no">등급차이 </label>
						<div class="col-sm-3">
							<input class="form-control" name="reward_no" id=reward_no type="text" value="1" readonly="readonly" />
						</div>
				</div>
				<div class="row"></div><br>
				<div class="form-group">
				<!-- 매칭 상태: 기초 값은 대기. 이후 성사되면 성사로 변경된다. 이부분은 리스트에서 앞부분에 상태를 보여줄때 쓸것이다. 역시 기본값은 hidden으로 변경해준다. -->
					<label class="col-sm-2 control-label" for="matching_status_condition">매칭상태</label>
						<div class="col-sm-3">
							<input class="form-control" name="matching_status_condition" id=matching_status_condition type="text" value="대기" readonly="readonly" />
						</div>
				</div><br>
				<div style="margin-left: 200px"><button type="submit" class="btn btn-default" value="submit">등록완료</button></div>
				
			</form>
	</div>

<!-- Site footer -->
<footer class="footer">
<p>&copy; Company 2017</p>
</footer>

</div> <!-- /container -->

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
