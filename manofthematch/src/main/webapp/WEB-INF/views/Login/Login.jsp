<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

 <!-- bootstrap 사용선언 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- css 사용 선언-->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Main.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Man Of The Match</title>

<!-- Bootstrap core CSS -->
    <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
    
<script type="text/javascript">

	$(document).ready(function(){
		$('#loginButton').click(function(){
			var memberId = $('input[name="memberId"]').val().length;
			var memberPassword = $('input[name="memberPassword"]').val().length;	
			if(memberId > 0) {
				$('#loginButton').submit();
			} else {
				alert('비밀번호를 입력하세요');
				$('input[name="memberPassword"]').focus();
				return false;
			} 
			}else {
				alert('아이디를 입력하세요');
				$('input[name="memberId"]').focus();
				return false;
			}
		
		});
	});

</script> 
    
</head>
<body>

  <div class="container">
	<!-- Module 의 Top2.jsp 를 include 합니다 -->	
		<c:import url="../Module/Top.jsp"/>
		
      <form id=""Login class="form-signin" method="post" action="${pageContext.request.contextPath}/Login">
        <h2 class="form-signin-heading">Please sign in</h2>
        	<label for="inputId" class="sr-only">아이디</label>
        		<input type="id" id="inputId" name="memberId"class="form-control" placeholder="아이디를 입력해주세요." required autofocus>
        	<label for="inputPassword" class="sr-only">비밀번호</label>
        		<input type="password" id="inputPassword" name="memberPassword" class="form-control" placeholder="비밀번호를 입력해주세요." required>
        	<div class="checkbox">
          	<label>
            	<input type="checkbox" value="remember-me"> 아이디 비밀번호 기억
          	</label>
        	</div>
        <button id="loginButton"class="btn btn-lg btn-primary btn-block" type="submit" value="Login">로그인</button>
      </form>

    </div> <!-- /container -->


</body>
</html>