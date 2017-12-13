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
	<!-- bootstrap을 사용하기 위한 CDN주소 -->
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	
	<!-- jquery를 사용하기위한 CDN주소 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 	<script>
    $(document).ready(function(){
    //    alert('jquery test');
    /* 입력폼 유효성 관련 요구사항
        1. 모든 폼은 공백 또는 "" 문자는 입력되면 안된다.
        2. 비밀번호는 4자이상 입력하여야 한다.
    */
        $('#addButton').click(function(){
        	if($('#boardPw').val().length < 4) {
                  alert('boardPw는 4자이상 이어야 합니다');
                  $('#boardPw').focus();
            } else if($('#boardName').val()=='') {
                alert('boardName을 입력하세요');
                $('#boardName').focus();
            } else if($('#boardContent').val()=='') {
                alert('boardContent을 입력하세요');
                $('#boardContent').focus();
            } else {
                $('#addForm').submit();
            }
        });
    });
	</script>

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
	<h1>BoardAdd</h1>
	<div class="container">
	    <!-- Module 의 Top2.jsp 를 include 합니다 -->	
	  		<c:import url="../Module/Top.jsp"/>
		<!-- 입력 폼 -->
		<form id="addForm" action="${pageContext.request.contextPath}/BoardAdd" method="post">
		  	<input name="memberNo" value="${loginfor.memberNo}" type="hidden"/>
		    <input name="memberId" value="${loginfor.memberId}" type="hidden"/>
		    <div class="form-group">
		        <label for="boardName">글 제목 :</label>
		        <input class="form-control" name="boardName" id="boardName" type="text"/>
		    </div>
		    
		    <div class="form-group">
		        <label for="boardName">구분 :</label>
		        <select class="form-control" name="boardCategoryNo" id="boardCategoryNo">
		        	<option value="1">축구</option>
		        	<option value="2">유머</option>
		        	<option value="3">게임</option>
		        	<option value="4">기타</option>
		        </select>
		    </div>
		 
		    <div class="form-group">
		        <label for="boardName">파일첨부 :</label>
		        <input class="form-control" name="boardFile" id="boardFile" type="file"/>
		    </div>
		    
		    <div class="form-group">
		        <label for="boardContent">내용 : </label>
		        <textarea class="form-control" name="boardContent" id="boardContent"></textarea>
		    </div>
		    
		    <div>
		        <input class="btn btn-default" id="addButton" type="button" value="글입력"/>
		        <input class="btn btn-default" type="reset" value="초기화"/>
		        <a class="btn btn-default" href="${pageContext.request.contextPath}/BoardALlList">글목록</a>
		    </div>
		</form>
	  
      <!-- Site footer -->
      <footer class="footer">
        <p>&copy; Company 2017</p>
      </footer>

    </div> <!-- /container -->

</div>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
      
   
  </body>
</html>
