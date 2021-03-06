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
	<script type="text/javascript">
		$(document).ready(function(){
			$("#replyInsert").click(function(){
				$("#replyAction").submit();
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
	<h1>BoardView</h1>
	<div class="container">
	    <!-- Module 의 Top2.jsp 를 include 합니다 -->	
	  			<c:import url="../Module/Top.jsp"/>
	  	 <table class="table">
         <tbody>
             <tr>
                <td>게시글 번호 :</td>
                <td>${board.boardNo}</td>
               </tr>
            <tr>
                   <td>제목 :</td>
                   <td>${board.boardName}</td>
            </tr>
            <tr>
                   <td>글 내용 :</td>
                   <td>${board.boardContent}</td>
            </tr>
        </tbody>
    </table>
    
    <!-- replyList 보여주기 -->
    <h1>댓글창</h1>
	<div class="list-group">
		<c:forEach var="rList" items="${replyList}">
			<div>
				<span>작성자 : </span><span>${rList.replyWriter}</span><br/>
				<span>내용 : </span><span>${rList.replyContent}</span><br>
				${rList.boardNo}<br>
				${rList.replyNo}
				<span><a href="${pageContext.request.contextPath}/replyDelete?boardNo=${rList.boardNo}&replyNo=${rList.replyNo}">삭제</a></span>
			</div>
			<div>
				<span>---------------------------------------------------------------------------------</span>
			</div>
		</c:forEach>
	</div>
	
    <!-- reply쓰기 -->
	<div>
		<form id="replyAction" action="${pageContext.request.contextPath}/replyInsert" method="POST">
			<input type="hidden" name="boardNo" value="${board.boardNo}"/>
			<div class="form-group row">
	  			<label for="boardName">댓글 :</label>
	  			<input class="form-control" name="replyContent" id="replyContent" type="text">
		    </div>
		    
		    <div class="form-group row">
		        <label for="boardName">작성자 :</label>
		        <input class="form-control" name="replyWriter" id="replyWriter" type="hidden" value = "${loginfor.memberId }"/>
		   		<input id="replyInsert" type="button" value="댓글등록"/>
		    </div>
		</form>
	</div>
	
    <a class="btn btn-default" href="${pageContext.request.contextPath}/BoardModify?boardNo=${board.boardNo}">수정</a>
    <a class="btn btn-default" href="${pageContext.request.contextPath}/BoardRemove?boardNo=${board.boardNo}">삭제</a>
    <a class="btn btn-default" href="${pageContext.request.contextPath}/BoardAllList">글목록</a>
    
      <!-- Site footer -->
      <footer class="footer">
        <p>&copy; Company 2017</p>
      </footer>

    </div> <!-- /container -->
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
      
   
  </body>
</html>