<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- bootstrap ��뼱�� -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<!-- css ��� ����-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Main.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<title>Man Of The Match</title>
 
</head>
<body>
	
	<div class="container">
		<!-- Module �� Top2.jsp �� include �մϴ� -->	
		<c:import url="../Module/Top.jsp"/>
	    <h4>ȸ�� ����Ʈ ������ �Դϴ�</h4>
	    <table class="table">
	        <thead>
	            <tr>
	                <td>no</td><td>id</td><td>pw</td>
	            </tr>
	        </thead>
	        <tbody>
	            <c:forEach var="u" items="${userList}">
	                <tr>
	                    <td>${u.userNo}</td><td>${u.userId}</td><td>${u.userPw}</td>
	                </tr>
	            </c:forEach>
	        </tbody>
	    </table>
	    <!-- ���̵� �˻� -->
	    <div>
	        <form action="/userList">
	            ���̵� �˻� : <input type="text" name="word"/><input type="submit"/>
	        </form>
	    </div>
	    <!-- ����¡ -->
	    <div>
	        <c:if test="${page>1}">
	            <a href="/userList?page=${page-1}">����</a>
	        </c:if>
	        
	        ${page}
	        
	        <c:if test="${page<lastPage}">
	            <a href="/userList?page=${page+1}">����</a>
	        </c:if>
	    </div>
	</div>
</body>
</html>

