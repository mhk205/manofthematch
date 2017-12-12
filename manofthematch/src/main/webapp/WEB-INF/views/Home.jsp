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
	  			<c:import url="Module/Top.jsp"/>
	  			
      <!-- Jumbotron -->
      <div id="myCarousel1" class="carousel slide" data-ride="carousel">
      	<ol class="carousel-indicators">
      		<li data-target="#myCarousel1" data-slide="0" class="active"></li>
      		<li data-target="#myCarousel1" data-slide="1"></li>
      		<li data-target="#myCarousel1" data-slide="2"></li>
      	</ol>
       <div class="carousel-inner maincarouselitem">
	      	<div class="item active maincarouseliteminner" style="background-image:URL(resources/image/background1.jpeg); background-repeat:no-repeat; background-position:center center; background-size:1150px 500px;  height: 300px; color:white;" align=center>
	      	<br>
	      	<img src="resources/image/logo2.png" width=100 height=100 align=left>
	        <h1 align="left">Man Of The Match!</h1>&nbsp;
	        <br>
	        <p class="lead">사회인 축구팀 경기 매칭 사이트 입니다. 자신의 지역의 다른 팀 들을 찾아 매칭을 진행하여 보세요.</p>
	        <a class="btn btn-lg btn-success" href="MatchList" role="button">시작하기</a>
	       </div>
	       <div class="item maincarouseliteminner" style="background-image:URL(resources/image/tactics.jpg); background-repeat:no-repeat; background-position:center center; background-size:1150px 500px; height: 300px; color:yellow;" align=center>
	       <br>
	       <h1 align="center">전술현황판 기능을 이용하세요</h1>&nbsp;
	        <br>
	        <h3 class="lead"><b>전술현황판 을 통해서 팀원을 배치하고 전술을 토론 해보세요!</b></h3>
	        <p><a class="btn btn-lg btn-primary" href="TeamTactics" role="button">전술현황판 으로</a></p>
	      </div>
	      <div class="item maincarouseliteminner" style="background-image:URL(resources/image/team.jpg); background-repeat:no-repeat; background-position:center center; background-size:1150px 500px; height: 300px; color:white;" align=center>
	       <br> 
	       <h1 align="center">게시판을 통해 의견을 나누세요</h1>&nbsp;
	        <br>
	        <h3 class="lead"><b>모두가 당신의 동료 입니다. 게시판에서 의견을 나눠보세요 </b></h3>
	        <p><a class="btn btn-lg btn-info" href="BoardAllList" role="button">게시판 으로</a></p>
	      </div>
      </div>
	</div>
	
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-lg-4">
          <h2>사파리 브라우저 에서는 불안정 할 수 있습니다!</h2>
          <p class="text-danger">As of v8.0, Safari exhibits a bug in which resizing your browser horizontally causes rendering errors in the justified nav that are cleared upon refreshing.</p>
          <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p><a class="btn btn-primary" href="#" role="button">View details &raquo;</a></p>
        </div>
        <div class="col-lg-4">
          <h2>지난 경기 결과</h2>
          <p>지난주 매칭이 진행 되었던 팀 들의 경기 결과를 볼 수 있습니다.</p>
          <p><a class="btn btn-primary" href="#" role="button">자세하게 보기 &raquo;</a></p>
       </div>
        <div class="col-lg-4">
          <h2>게시판</h2>
          <p>게시판 에서 다른 사람들과 의견을 공유해 보세요.</p>
          <p><a class="btn btn-primary" href="#" role="button">자세하게 보기 &raquo;</a></p>
        </div>
     
     </div>
     
   </div>

      <!-- Site footer -->
      <footer class="footer">
        <p>&copy; Company 2017</p>
      </footer>

     <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
