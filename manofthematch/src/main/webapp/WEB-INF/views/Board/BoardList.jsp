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
	<h1>BoardList</h1>
	<div class="container">
	    <!-- Module 의 Top2.jsp 를 include 합니다 -->	
	  			<c:import url="../Module/Top.jsp"/>
	  			
     <div class="topb">--게시판 리스트</div>
     <div>전체행의 수 : ${currentPage}, ${boardCount}, ${nextPage}</div>
	 <table class="table table-striped">
	 	<thead>
		 	<tr>
		 		<th>게시글 번호</th>
		 		<th>구분</th>
		 		<th>제목</th>
		 		<th>날짜</th>
		 		<th>글쓴이</th>
		 		<th>조회</th>
		 		
		 	</tr>
		 </thead>
		 
		 <tbody>	
	 	 	<c:forEach items="${list}" var="board">
			 	<!-- 링크 결로 수정해야함!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!  -->
		 		<tr>
		 			<td><a href="${pageContext.request.contextPath}/BoardView?boardNo=${board.boardNo}">${board.boardNo}</a></td>
		 			<td><a href="${pageContext.request.contextPath}/BoardView?boardNo=${board.boardNo}">${board.boardCategoryNo}</a></td>
		 			<td><a href="${pageContext.request.contextPath}/BoardView?boardNo=${board.boardNo}">${board.boardName}</a></td>
		 			<td><a href="${pageContext.request.contextPath}/BoardView?boardNo=${board.boardNo}">${board.boardDate}</a></td>
		 			<td><a href="${pageContext.request.contextPath}/BoardView?boardNo=${board.boardNo}"></a></td>
		 			<td><a href="${pageContext.request.contextPath}/BoardView?boardNo=${board.boardNo}"></a></td>
		 			
		 		</tr>
	 		</c:forEach>
	 	</tbody>
	 </table>
	 			
	 <ul class="pager">
	 	<c:choose>
	 		<c:when test="${currentPage eq 1 }">
	 			<li class="previous"><a href="${pageContext.request.contextPath}/BoardAllList?currentPage=${currentPage}" style="color: #8C8C8C">이전</a></li>
	 		</c:when>
	 		<c:otherwise>
	 			<li class="previous"><a href="${pageContext.request.contextPath}/BoardAllList?currentPage=${currentPage-1}">이전</a></li>
	 		</c:otherwise>
	 	</c:choose>    	
        
     	<c:forEach begin = "1" end = "10" var="x" varStatus="status">
	     	<li class="pagination"><a href="${pageContext.request.contextPath}/BoardAllList?currentPage=${x}">${x}</a></li>   	
     	</c:forEach>
        
        <c:choose>
	 		<c:when test="${currentPage < lastPage }">
	 			<li class="next"><a href="${pageContext.request.contextPath}/BoardAllList?currentPage=${currentPage+1}">다음</a></li>
	 		</c:when>
	 		<c:otherwise>
	 			<li class="next"><a href="${pageContext.request.contextPath}/BoardAllList?currentPage=${currentPage}" style="color: #8C8C8C">다음</a></li>
	 		</c:otherwise>
	 	</c:choose>
	 	
    </ul>
	<div>
        <a class="btn btn-default" href="${pageContext.request.contextPath}/BoardAdd">게시글 입력</a>
    </div>
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
	
</body>
</html>