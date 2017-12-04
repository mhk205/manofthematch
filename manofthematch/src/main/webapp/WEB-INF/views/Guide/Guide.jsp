<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
  
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Man Of The Match</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <!-- bootstrap 사용 선언 -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
  <!-- css 사용 선언-->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Main.css" />
  
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
    	 <ul>
      		<br><br><li><a href="Guide"><span class="glyphicon glyphicon-hand-right">&nbsp;첫화면</span></a></li><br>
	      
	        <br><li><a href="GuideProject"><span class="glyphicon glyphicon-list-alt">&nbsp;프로젝트정보</span></a></li><br>
	        
	        <br><li><a href="GuideTeam"><span class="glyphicon glyphicon-user">&nbsp;팀원소개</span></a></li><br>
	        
	        <br><li><a href="GuideErd"><span class="glyphicon glyphicon-eye-open">&nbsp;ERD</span></a></li><br>
	        
	        <br><li><a href="https://github.com/mhk205/manofthematch"><span class="glyphicon glyphicon-hand-right">&nbsp;GitHub</span></a></li><br>
	       
	        <br><li><a href="Home"><span class="glyphicon glyphicon-home">&nbsp;프로젝트화면</span></a></li>
	      </ul><br>
	      
	      
    </div>
			  <hr align="left" style="border: solid 2px #6799FF; width:80%">
			  <h1 align="center">프로젝트 주제</h1>
			  <h4 align="center">사회인 축구팀 간의 경기 매칭 사이트</h4>
			      
		      <hr align="left" style="border: solid 2px #6799FF; width:80%">
		      <h2 align="center">프로젝트 정보</h2>
		      <p align="center">프로젝트 명 : Man Of The Match ! (MOM)</p>
		      <hr align="left" style="border: solid 2px #6799FF; width:80%">
		      <h2 align="center">프로젝트 목적</h2>
		      <p align="center">1. 사회인 축구 팀 간의 경기 매칭을 원활하게 할 수 있다</p>
		      <p align="center">2. 사회인 축구 팀 의 전반적인 운영 관리를 한다</p>
		      <p align="center">3. 랭킹 시스템을 활용하여 생활 축구에 목표 의식을 고취 시킨다</p>
		      <p align="center">4. 아마추어 축구를 활성화 시킨다</p>
		      <hr align="left" style="border: solid 2px #6799FF; width:80%">
		     
		      <h2 align="center">개발환경<br><br></h2>
		      <p align="center"><font color="red">OS</font> : Windows7<br><br></p>
		      <p align="center"><font color="red">웹브라우저</font> : Crome<br><br></p>
		      <p align="center"><font color="red">WAS</font> : apache-tomcat-8.0.xx<br><br></p>
		      <p align="center"><font color="red">DB</font> : MySQL<br><br></p>
		      <p align="center"><font color="red">DB관리툴</font> : HeidiSQL<br><br></p>
		      <p align="center"><font color="red">버전관리</font> : GitHub<br><br></p>
		      <p align="center"><font color="red">언어</font> : java1.8<br><br></p>
		      <p align="center"><font color="red">프레임워크</font><br><br>Spring-tool-suite-3.8.4, Springframework-4.5.9, Spring-webMVC 4.3.9, Maven, mybatis 3.3.1, mybatis-spring 1.2.2, bootstrap<br><br></p>	
		      <p align="center"><font color="red">API</font><br><br>jackson.core 2.8.8, commons-dbcp 1.4, Spring-jdbc 4.3.8, MySQL-connector-java 5.1.39, maven-compiler-plugin 3.1, maven-eclipse-plugin 2.9, javax.inject 1,<br> log4j 1.2.15, commons-io 2.0.1, commons-fileupload 1.2.2</p>       
		      
		      
		   
		   
		
	</div>
</div>
</body>
</html>
