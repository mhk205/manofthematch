<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- bootstrap 사용선언 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<!-- css 사용 선언-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Main.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<title>Man Of The Match</title>
	
	<script>
		function passchk() {
			
			var form = document.getElementById('insertForm');
			
			var MemberPassword = form.MemberPassword.value;
			var MemberPassword2 = form.MemberPassword2.value;
			if (MemberPassword2.length == 0 || MemberPassword2 == null) {
				form.chk.value = "비밀번호를 입력하세요";
			} else if (MemberPassword != MemberPassword2) {
				form.chk.value = "비밀번호가 다릅니다.";
			} else {
				form.chk.value = "비밀번호가 동일합니다.";
			}
			return;
		}
		
		$(document).ready(function(){
			$('#MemberPassword, #MemberPassword2').keyup(function(){
				var MemberPassword = $('#MemberPassword').val();
				var MemberPassword2 = $('#MemberPassword2').val();
				var chkObj = $('#chk');	
				if (MemberPassword != MemberPassword2) {
					chkObj.val("비밀번호가 다릅니다."); 
				} else {
					chkObj.val("비밀번호가 동일합니다."); 
				}
			})
		})
		
	</script>

</head>
<body>		
	<div class="container">
		<!-- Module 의 Top2.jsp 를 include 합니다 -->	
		<c:import url="../Module/Top.jsp"/>
		<h1> 회원가입 </h1>
		<form name="insertForm" id="insertForm" action="${pageContext.request.contextPath}/MemberAdd" method="post"><br><br>
	
		<div class="form-group" >
				<label class="col-sm-2 control-label" for="MemberId">아이디  </label>
					<div class="col-sm-3">
				<input class="form-control" name="MemberId" id="MemberId" type="text" placeholder="아이디를 입력하세요."/>
					</div>
		</div>
		<br>
		
			<div class="row">
			</div>
			<br>
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="MemberPassword">비밀번호  </label>
				<div class="col-sm-3">
			<input class="form-control" type="password" name="MemberPassword" id="MemberPassword"  placeholder="비밀번호를 입력하세요"/>
				</div>
				
			<div class="row">
			</div>
			<br>
				
			<label class="col-sm-2 control-label" for="MemberPassword2">비밀번호 확인  </label>
				<div class="col-sm-3">
			<input class="form-control" type="password" name="MemberPassword2"  id="MemberPassword2" placeholder="비밀번호를 확인하세요"/>&nbsp; 
				</div>
			<input type="text" style="border-width: 0px" size="20" name="chk" id="chk" value="비밀번호를 입력하세요" readonly="readonly"> <br><br>
				
		</div>
		
			<div class="row">
			</div>
			<br>
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="MemberName">이름  </label>
				<div class="col-sm-3">
			<input class="form-control" name="MemberName" id=MemberName type=text/>
				</div>
		</div>
		
			<div class="row">
			</div>
			<br>
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="MemberPosition">선호포지션  </label>
				<div class="col-sm-3">
			<input class="form-control" name="MemberPosition" id=MemberPosition type=text/>
				</div>
		</div>
		
			<div class="row">
			</div>
			<br>
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="MemberSex">성별  </label>&nbsp;&nbsp;&nbsp;
			남 <input name="MemberSex" id="MemberSex" type="radio" value="남"/>
			여 <input name="MemberSex" id="MemberSex" type="radio" value="여"/>
		</div>
		
			<div class="row">
			</div>
			<br>
		
		<div class="form-inline">
			<label class="col-sm-2 control-label" for="MemberBirthday">생년월일  </label>&nbsp;&nbsp;&nbsp; 
			<input class="form-control" name="MemberBirthday" type="Date">
			
		</div>
		
			<div class="row">
			</div>
			<br>
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="MemberEmail">이메일  </label>
				<div class="col-sm-3">
			<input class="form-control" type="text" size="15" name="MemberEmail" placeholder="이메일을 입력하세요">
				</div>
		</div>
		
		<div class="radio">
			<label class="radio-inline">
				<input type="radio" name="sent" value="ok"> 
				수신				
			</label> 
			<label class="radio-inline">
				<input type="radio" name="sent" value="ok"> 
				거절	
			</label> 
		</div>		
		
			<div class="row">
			</div>
			<br>
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="MemberPhonenumber">전화번호 </label>
				<div class="col-sm-3">
			<input class="form-control" type="text" name="MemberPhonenumber" size="5" maxlength="11">
				</div>
		</div>
		
			<div class="row">
			</div>
			<br>
		
		 <div class="form-group">
		    <label class="col-sm-2 control-label" for="MemberPicture">사진</label>
		    <input type="file" id="MemberPicture">
	    </div>
    
      <button type="submit" class="btn btn-default" value="submit">가입완료!</button>
				
	</form>

	</div>


</body>
</html>