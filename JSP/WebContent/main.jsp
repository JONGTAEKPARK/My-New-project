<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width" initial-scale="1" />
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/custom.css" />
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<style type="text/css">
.jumbotron {
	background-image: url('images/jumbotron.jpg');
	background-size: 100% 100%;
	text-shadow: black 0.2em 0.2em 0.2em;
	color: white;
}
</style>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>

	<nav class="navbar navbar-default">
		<div class="navbar-hedaer">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트</a>
		</div>

		<div class="collapase navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">메인</a></li>
				<li><a href="lecture.jsp">강의</a></li>
				<li><a href="bbs.jsp">게시판</a></li>

			</ul>
			<%
				if (userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기 <span class="caret"></span></a>

					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul></li>
			</ul>

			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원 관리 <span class="caret"></span></a>

					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
						<li><a href="logoutAction.jsp">내 정보 수정</a></li>
					</ul></li>
			</ul>

			<%
				}
			%>
		</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<h1 class="text-center">명품 강의</h1>
			<p class="text-center">그 동안 배우고 싶었던 강의를 저렴한 값으로 들어보세요</p>
			<p class="text-center">
				<a class="btn btn-primary" btn-lg href="" role="button">강의 들으러
					가기 </a>
			</p>
		</div>
		<hr>
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title">
					<span class="glyphicon glyphicon-pencil"></span> &nbsp;&nbsp; 최신 강의
					목록
				</h3>
			</div>
			<div class="panel-body">
				<div class="media">
					<div class="media-left">
						<a href="lecture.jsp?sport"><img class="media-object"
							src="images/basketball.jpg" alt="농구기초 강의 이미지"></a>
					</div>
					<div class="media-body">
						<h4 class="media-heading">
							<a href="lecture.jsp?basketball">농구 기초 강의 </a>&nbsp;<span
								class="badge">NEW</span>
						</h4>
						<div class="panel-group">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" href="#collapse1">농구 기초 강의</a>
									</h4>
								</div>
								<div id="collapse1" class="panel-collapse collapse">
									<ul class="list-group">
										<li class="list-group-item"><a href="lectureBaseball.jsp">오리엔테이션</a></li>
									
									</ul>
								</div>
							</div>
						</div>
					</div>
					<hr>
					<div class="media">
						<div class="media-left">
							<a href="lecture?programing"><img class="media-object"
								src="images/java1.png" alt="프로그래밍 강의 이미지"></a>
						</div>
							<div class="media-body">
								<h4 class="media-heading">
									<a href="lectureProgram.jsp">프로그래밍 기초 강의</a>&nbsp;<span class="badge">NEW</span>
								</h4>
								<div class="panel-group">
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a data-toggle="collapse" href="#collapse2"> 프로그래밍 기초 강의</a>
											</h4>
										</div>
										<div id="collapse2" class="panel-collapse collapse">
											<ul class="list-group2">
												<li class="list-group-item"><a href="lectureProgram.jsp"> 오리엔테이션</a></li>
											
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<hr>
					<div class="media">
						<div class="media-left">
							<a href="lecture?office"><img class="media-object"
								src="images/japan.jpg" alt="오피스 강의 이미지"></a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">
								<a href="lectureNihon.jsp">일본어 기초 강의 </a>&nbsp;<span class="badge">NEW</span>
							</h4>
							<div class="panel-group">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" href="#collapse3">일본어 기초 강의</a>
										</h4>
									</div>
									<div id="collapse3" class="panel-collapse collapse">
										<ul class="list-group">
											<li class="list-group-item"><a href="lectureNihon.jsp"> 오리엔테이션</a></li>
										
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<jsp:include page="/basic_copyright.jsp" flush="true" />
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="js/bootstrap.js"></script>
</body>
</html>