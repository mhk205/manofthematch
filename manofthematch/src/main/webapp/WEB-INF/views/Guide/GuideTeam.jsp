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
   	  <div class="col-sm-9" >
      <!-- 프로젝트 팀원 소개  -->
      <hr align="left" style="border: solid 2px #6799FF; width:100%">
      <h2 align="center">팀원 소개</h2>
      <hr align="left" style="border: solid 2px #6799FF; width:100%">
	  </div>  
	
	<div class="col-xs-8 col-md-8">
		<div class="row teambox">
			<div class="col-md-3">
			<table class="table table-hover">
			<img src="resources/image/logo2.png" class="img-circle" height="65" width="65" alt="팀장">
				<tr>
					<td><h3>김민호 (팀장)</h3></td><br>
				</tr>
				<tr>
					<td><h5>한국스마트정보교육원 2017.12.27수료</h5></td>
				</tr>
				<tr>
					<td>
						<a href="http://kkoo0202.cafe24.com/">
							<button type="button" class="btn btn-block btn-success btn-sm">호스팅사이트</button>
						</a>
					</td>
				</tr>
				<tr>
					<td>
						<a href="">
							<button type="button" class="btn btn-block btn-primary btn-sm">블로그</button>
						</a>
					</td>
				</tr>
			</table>
			1	회원관리<br>
			1.1	회원등록<br>
			1.2	회원수정<br>
			1.3	회원탈퇴<br>
			1.4	전체회원검색<br>
			2	로그인관리<br>
			2.1	로그인<br>
			2.2	로그아웃<br>
			2.3	아이디찾기<br>
			2.4	비밀번호찾기<br>
			3	팀관리<br>
			3.1	팀생성<br>
			3.2	팀정보수정<br>
			3.3	팀탈퇴<br>
			3.4	팀정보검색<br>
			4	선수정보관리<br>
			4.1	선수정보등록<br>
			4.2	선수정보수정<br>
			4.3	선수정보삭제<br>
			4.4	선수정보조회<br>
			9	전술관리<br>
			9.1	전술관리등록<br>
			9.2	전술관리수정<br>
			9.3	전술관리삭제<br>
			9.4	전술관리조회<br>
			21	포지션관리<br>
			21.1 포지션수정<br>
			21.2 포지션삭제<br>
			23	축구경력관리<br>
			23.1 축구경력수정<br>
			23.2 축구경력삭제<br>
			29	포메이션카테고리관리<br>
			29.1 포메이션카테고리수정<br>
			29.2 포메이션카테고리삭제<br>
			32	팀커리어관리<br>
			32.1 팀커리어등록<br>
			32.2 팀커리어조회<br>
			33.	 레이아웃작성<br>
			
			
			</div>
										 	
			<div class="col-md-3">						 	
			<table class="table table-hover">
			<img src="resources/image/logo2.png" class="img-circle" height="65" width="65" alt="팀원">	    
			<tr>
					<td><h3>한용희 (팀원)</h3></td>
					
				</tr>
				<tr>
					<td><h5>한국스마트정보교육원 2017.12.27수료</h5></td>
				</tr>
				<tr>
					<td>
						<a href="http://kkoo0202.cafe24.com/">
							<button type="button" class="btn btn-block btn-success btn-sm">호스팅사이트</button>
						</a>
					</td>
				</tr>
				<tr>
					<td>
						<a href="">
							<button type="button" class="btn btn-block btn-primary btn-sm">블로그</button>
						</a>
					</td>
				</tr>
			</table>
			5	선수 커리어 관리<br>
			5.1	선수커리어등록<br>
			5.2	선수커리어조회<br>
			6	매칭관리<br>
			6.1	매칭정보등록<br>
			6.2	매칭정보수정<br>
			6.3	매칭정보삭제<br>
			6.4	매칭정보조회<br>
			7	팀별 매칭 기록 관리<br>
			7.1	팀별 매칭 결과 기록<br>
			7.2	팀별 매칭 결과 수정<br>
			7.3	팀별 매칭 결과 삭제<br>
			7.4	팀별 매칭 결과 조회<br>
			8	비품정보관리<br>
			8.1	비품정보수정<br>
			8.2	비품정보조회<br>
			10    시즌 별 랭킹 관리<br>
			10.1 시즌 별 랭킹 등록<br>
			10.2 시즌 별 랭킹 수정<br>
			10.3 시즌 별 랭킹 삭제<br>
			10.4 시즌 별 랭킹 조회<br>
			15     자격관리<br>
			15.1 심판자격증등록<br>
			15.2 심판자격증삭제<br>
			15.3 심판자격증조회<br>
			16    개인가상연봉관리<br>
			16.1 개인가상연봉수정<br>
			16.2 개인가상연본조회<br>
			17    개인별 매칭 결과 기록 관리<br>
			17.1 개인별매칭결과기록<br>
			17.2 개인별매칭결과수정<br>
			17.3 개인별매칭결과삭제<br>
			17.4 개인별매칭결과조회<br>
			20	등급별차이보상관리<br>
			20.1 등급별차이보상수정<br>
			20.2 등급별차이보상삭제<br>
			22	체력등급관리<br>
			22.1 체력등급수정<br>
			22.2 체력등급삭제<br>
			</div>
			
			<div class="col-md-3">
			<table class="table table-hover">							      
			<img src="resources/image/logo2.png" class="img-circle" height="65" width="65" alt="팀원">    
			<tr>
					<td><h3>고석용 (팀원)</h3></td>
					
				</tr>
				<tr>
					<td><h5>한국스마트정보교육원 2017.12.27수료</h5></td>
				</tr>
				<tr>
					<td>
						<a href="http://kkoo0202.cafe24.com/">
							<button type="button" class="btn btn-block btn-success btn-sm">호스팅사이트</button>
						</a>
					</td>
				</tr>
				<tr>
					<td>
						<a href="">
							<button type="button" class="btn btn-block btn-primary btn-sm">블로그</button>
						</a>
					</td>
				</tr>
			</table>
			18	지역정보관리<br>
			18.1 지역정보등록<br>
			18.2 지역정보수정<br>
			18.3 지역정보조회<br>
			18.4 도 정보등록<br>
			18.5 도 정보수정<br>
			18.6 도 정보삭제<br>
			18.7 시 정보등록<br>
			18.8 시 정보수정<br>
			18.9 시 정보삭제<br>
			19	구장정보관리<br>
			19.1 구장정보등록<br>
			19.2 구장정보수정<br>
			19.3 구장정보삭제<br>
			19.4 구장정보조회<br>
			24	개인등급<br>
			24.1 개인등급수정<br>
			24.2 개인등급삭제<br>
			25	팀가치정보<br>
			25.1 팀가치정보등록<br>
			25.2 팀가치정보조회<br>
			26	장부관리<br>
			26.1 장부관리조회<br>
			27	장부출입금관리<br>
			27.1 장부출입금관리등록<br>
			27.2 장부출입금관리수정<br>
			27.3 장부출입금관리삭제<br>
			27.4 장부출입금관리조회<br>
			30	팀직책관리<br>
			30.1 팀직책등록<br>
			30.2 팀직책수정<br>
			30.3 팀직책삭제<br>
			30.4 팀직책조회<br>
			31	직책정보관리<br>
			31.1 직책정보수정<br>
			31.2 직책정보삭제<br>
				
			</div>
			
			<div class="col-md-3">
			<table class="table table-hover">							      
			<img src="resources/image/logo2.png" class="img-circle" height="65" width="65" alt="팀원">     
			<tr>
					<td><h3>우제원 (팀원)</h3></td>
					
				</tr>
				<tr>
					<td><h5>한국스마트정보교육원 2017.12.27수료</h5></td>
				</tr>
				<tr>
					<td>
						<a href="http://kkoo0202.cafe24.com/">
							<button type="button" class="btn btn-block btn-success btn-sm">호스팅사이트</button>
						</a>
					</td>
				</tr>
				<tr>
					<td>
						<a href="">
							<button type="button" class="btn btn-block btn-primary btn-sm">블로그</button>
						</a>
					</td>
				</tr>
			</table>
			11	게시판관리<br>
			11.1 게시물등록<br>
			11.2 게시물수정<br>
			11.3 게시물삭제<br>
			11.4 게시물조회<br>
			11.5 게시물 댓글 조회<br>
			11.6 게시물 댓글 등록<br>
			11.7 게시물 댓글 삭제<br>
			28	게시판카테고리관리<br>
			28.1 게시판카테고리수정<br>
			28.2 게시판카테고리삭제<br>
			</div>					   			
		</div>
	</div>
</div>

</body>
</html>