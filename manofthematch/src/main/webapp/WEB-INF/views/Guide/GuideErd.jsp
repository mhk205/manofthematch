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
	      
	        <br><li><a href="GuideProject"><sapn class="glyphicon glyphicon-list-alt">&nbsp;프로젝트정보</sapn></a></li><br>
	        
	        <br><li><a href="GuideTeam"><span class="glyphicon glyphicon-user">&nbsp;팀원소개</span></a></li><br>
	        
	        <br><li><a href="GuideErd"><span class="glyphicon glyphicon-eye-open">&nbsp;ERD</span></a></li><br>
	        
	        <br><li><a href="https://github.com/mhk205/manofthematch"><span class="glyphicon glyphicon-hand-right">&nbsp;GitHub</span></a></li><br>
	       
	        <br><li><a href="Home"><span class="glyphicon glyphicon-home">&nbsp;프로젝트화면</span></a></li>
	       	</ul><br>
   			</div>
   			<hr align="left" style="border: solid 2px #6799FF; width:80%">
			  <h1 align="center" color="blue">프로젝트 ERD</h1>
			  <hr align="left" style="border: solid 2px #6799FF; width:80%">
			  <img src="resources/image/erd.jpg" width="900" height="550">
   			 
		</div>
	</div>
</body>
</html>