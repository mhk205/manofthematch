<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Man Of The Match</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    /* 부트스트랩의 설정을 !important; 로 제거 한 후 다른 설정을 넣습니다 */
    .navbar a{color: #fff !important;}
    .navbar a:hover{color: #F2CB61 !important;}
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* 회색으로 셋팅된 background color 와 100% height로 설정된 sidenav메뉴 */
    .sidenav {
      padding-top: 20px;
      background-color: white;
      height: 100%;
    }
    
    /* 검은색으로 셋팅된 background color와, 하얀색 text 그리고 some padding */
    footer {
      background-color: #469840;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse" style="background-color:#58AA52;">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">로고</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
    <!-- 상단의 navbar 메뉴를 작성 합니다. -->
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">홈</a></li>
        <li><a href="#">팀</a></li>
        <li><a href="#">매칭</a></li>
        <li><a href="#">커뮤니티</a></li>
        <li><a href="#">랭킹</a></li>
        <li><a href="#">개인정보</a></li>
     
      </ul>
      <!-- 상단의 맨오른쪽 끝 로그인 부분을 작성합니다. -->
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
  <!-- 왼쪽의 sidenav 메뉴를 작성합니다. -->
    <div class="col-sm-2 sidenav">
      <p><a href="#">사이드메뉴(링크1)</a></p>
      <p><a href="#">사이드메뉴(링크2)</a></p>
      <p><a href="#">사이드메뉴(링크3)</a></p>
    </div>
    <!-- 메인화면의 본문을 작성합니다. -->
    <div class="col-sm-8 text-left">
    	
    	 
      <h1>Man Of The Match에 오신 것을 환영합니다!</h1>
      <p>Man Of The Match 는 사회인 축구팀 경기 매칭 사이트 입니다. 당신의 지역에 소속되어 있는 여러 팀들을 찾아, 매칭을 진행하여 보세요!</p>
      <!-- 본문에 이미지 추가 -->
      <img src="https://img.grouponcdn.com/deal/ggqRR5SYbPJkfW1B3gLn/TS-8000x4800.jpg/v1/c700x420.jpg">
      <hr>
      <!--메인화면 본문의 하단에 텍스트를 작성합니다.  -->
      <h3>미니매칭결과(Ajax이용)</h3>
      <p>17.11.11 전주 "잘했군"팀 과 "못했군"팀 의 매칭 결과 3:1 로 "잘했군"팀 이 승리 하였습니다.<br>
      	 17.11.12 서울 "으라차차"팀 과 "백마축구단"팀 의 매칭 결과 0:2 로 "백마축구단"팀 이 승리 하였습니다.</p>
    </div>
    <!-- 오른쪽 sidenav 메뉴를 작성합니다. -->
    <div class="col-sm-2 sidenav">
      <div class="well">
        <p>상위20위 팀 랭킹표시(Ajax)<br>1위.잘했군<br>2위.못했군<br>3위.백마축구단<br>4위.으라차차</p>
      </div>
      <div class="well">
        <p>이달의 베스트일레븐(선수)</p>
      </div>
    </div>
  </div>
</div>
<!-- 가장 하단의 footer 를 작성합니다. -->
<footer class="container-fluid text-center">
  <p>하단 텍스트 입력란 입니다.</p>
</footer>

</body>
</html>
