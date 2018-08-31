<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="lecture.LectureDAO"%>
<%@ page import="lecture.Lecture"%>
<%@ page import="java.util.ArrayList"%>

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


	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		
		int pageNumber = 1; //기본페이지 
		if (request.getParameter("pageNumber") != null) {
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
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
		<div class="row">
			<div class="col-xs-12">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">
							<span class="glyphicon glyphicon-tags"></span> &nbsp;&nbsp;박종택 강사
						</h3>
					</div>
					<div class="panel-body">
						<div class="media">
							<div class="media-left">
								<a href="#"> <img class="media-object" src="images/me2.jpg"
									alt="개발자 이미지 사진"></a>
							</div>
							<div class="media-body">
								<h4 class="media-heading">박종택</h4>
								</br> 명품 강의의 대표 입니다. </br>
							</div>
						</div>
					</div>
					<table class="table">
						<thead>
							<tr>
								<th>강사명</th>
								<th>강의 번호</th>
								<th>강의 제목</th>
								<th>강의 날짜</th>
							</tr>
						</thead>
						
						<tbody>
						
							<%LectureDAO lectureDAO = new LectureDAO();
							  ArrayList<Lecture> list = lectureDAO.getList(pageNumber);	
							  for (int i =0; i < list.size(); i++){
							%>
						
						
							<tr>
								<td><%= list.get(i).getWriter() %></td>
								<td><%= list.get(i).getSeqno() %></td>
								<td><a href="lectureBaseball.jsp"><%= list.get(i).getTitle() %></a></td>
								<td><%= list.get(i).getWdate().substring(0, 11) %></td>
							</tr>
							
							
							<%
							  }
							%>
						</tbody>
					</table>
	
				

					<div class="panel-footer">
					<a href="lectureWrite.jsp" class="btn btn-primary pull-right">강의 등록</a>
						<blockquote>Live without regret</blockquote>	
					
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