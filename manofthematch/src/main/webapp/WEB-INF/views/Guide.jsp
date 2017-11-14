<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
  
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 1000px}
    
    /* Set gray background color and 100% height */       
    .sidenav {
      background-color: #fff;
      height: 100%; 
    }
    
    /* Set black background color, white text and some padding */ 
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;}  
    }
  </style>
</head>  
<body>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <h4>프로젝트 포트폴리오</h4>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#section1">팀원소개</a></li>
        
        <li><a href="#section2">프로젝트 정보</a></li>
        
        <li><a href="#section3">ERD</a></li>
        
        <li><a href="#section3">Git Hub</a></li>
       
        <li><a href="#section4">메인 페이지!</a></li>
      </ul><br>
    </div>

<!-- 프로젝트 소개와 개발환경 -->
      <hr>
      <h2>프로젝트 정보</h2>
      <p>프로젝트 명 : Man Of The Match ! (MOM)</p>
      <p>프로젝트 목적 : 사회인축구 팀들의 전반적인 운영 및 매칭을 효율적으로 하고, 축구 관련된 정보를 제공 하는데 있다.</p>
      <p>개발환경 : JAVA, Spring, jQuery, MySql, JSP, Ajax, Mybatis</p>
      <hr>
      
      
    <div class="col-sm-9" >
      <h4><small>Man Of The Match !</small></h4>
      <hr>
      
      
      <!-- 프로젝트 팀원 소개  -->
      <h2>개발 3팀 소개</h2>
      <p><span class="badge"></span>개발 3팀을 소개합니다.</p><h5><span class="glyphicon glyphicon-time"></span> 저희는 2017년 6월 19일 처음 만났습니다.</h5><br>
      <div class="row">
        <div class="col-sm-2 text-center">
          <img src="bandmember.jpg" class="img-circle" height="65" width="65" alt="Director">
        </div>
        <div class="col-sm-10">
        
          <h4>부장 김민호</h4>
			<p>개발3팀의 팀장을 맡고 있는 김민호 입니다.<br> 
          		좋아하는것 :달달한거 좋아합니다.<br>
          		특징 : 당이 자주 떨어짐.</p>
          <br>
        </div>
        <div class="col-sm-2 text-center">
          <img src="bird.jpg" class="img-circle" height="65" width="65" alt="General Manager">
        </div>
        <div class="col-sm-10">
          <h4>차장 한용희</h4>
			<p>개발 3팀의 차장을 맡고있는 한용희 입니다. <br>
				좋아하는것 : 루리웹 <br>
				특징 : 음음...
          </p>
          <br>
        </div>
        
          <div class="col-sm-2 text-center">
          <img src="bird.jpg" class="img-circle" height="65" width="65" alt="Manager">
        </div>
        <div class="col-sm-10">
          <h4>과장 고석용</h4>
			<p>개발 3팀의 부장을 맡고있는 고석용 입니다. <br>
				좋아하는것 : 축구보기 <br>
				특징 : 하이라이트 보기....
          </p>
          <br>
        </div>
        
              <div class="col-sm-2 text-center">
          <img src="bird.jpg" class="img-circle" height="65" width="65" alt="Assistant Manager">
        </div>
        <div class="col-sm-10">
          <h4>대리 우제원</h4>
			<p>개발 3팀의 대리을 맡고있는 우제원 입니다. <br>
				좋아하는것 : 모르겠음... <br>
				특징 : 모르겠음...
          </p>
          <br>
        </div>
        
      </div>
    </div>
  </div>
</div>

<footer class="container-fluid">
  <p>Footer Text</p>
</footer>

</body>
</html>
