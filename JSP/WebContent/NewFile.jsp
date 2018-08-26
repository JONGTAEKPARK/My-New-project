
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width", initial-scale="1">
	<title>코딩 부스터</title>
	<link rel ="stylesheet" href="css/bootstrap.css">
	<link rel ="stylesheet" href="css/codingBooster.css">
</head>
<body>
	<style type="text/css">
		.jumbotron{
				background-image: url('images/jumbotron.jpg');
				background-size: 100% 100%;
				text-shadow : black 0.2em 0.2em 0.2em ;
				color: white;
		}
	</style>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
				 data-target="#bs-example-navbar-collase-1" aria-expanded="false">
					 <span class="sr-only"></span>
					 <span class="icon-bar"></span>
					  <span class="icon-bar"></span>
					   <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html"> 코딩 부스터 </a>
			</div>
			<div clas="collapse navbar-callapse" id="bs-example-navbar-collase-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="index.html">소개<span class="sr-only"></span></a></li>
					<li><a href="instructor.html">강사진 소개 </a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
						  aria-haspopup="true" aria-expanded="false">강의2 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="lecture.html?lectureName=C">C언어</a></li>
						<li><a href="lecture.html?lectureName=Java">JAVA</a></li>
						<li><a href="lecture.html?lectureName=Android">안드로이드</a></li>
					</ul>
					</li>
				</ul>
				<form class="navbar-form navbar-lef">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="내용을 입력하세요">
					</div>
					<button type="submit" class="btn btn-warning">검색 </button>
				</form>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
						  aria-haspopup="true" aria-expanded="false">접속하기 <span class="caret"></span></a>
					 <ul class="dropdown-menu">
						<li><a href="loginForm.html">로그인 </a></li>
						<li><a href="registerForm.html">회원가입</a></li>
						
					</ul>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<div class= "container">
		<div class="jumbotron">
			<h1 class="text-center">코딩 부스터를 소개 합니다.</h1>
			<p class="text-center"> 코딩 부스터는 IT교육 사이트 입니다 다양한 IT 관련 무료 및 유료 강의가 존재합니다. </p>
			<p class="text-center"><a class="btn btn-primary" btn-lg href="lecture.html" role="button">강의 들으러 가기 </a></p>
		</div>
		<div class="row">
			<div class="col-md-4">
				<h4>코딩 부스터의 특징</h4>
					<p>코딩 부스터는 다른 사이트와 차원이 다른 깔끔한 구성을 보여줍니다. 모든 페이지가 사용자가 접근하고 읽기 실도록 정교하게 구성되었습니다.</p>
					<p><a class="btn btn-default" data-target="#modal" data-toggle="modal">자세히 알아 보기</a></p>
			</div>
			<div class="col-md-4">
				<h4>폭넓은 강사진</h4>
					<p>코딩 부스터는 다른 사이트와 차원이 다른 깔끔한 구성을 보여줍니다. 모든 페이지가 사용자가 접근하고 읽기 실도록 정교하게 구성되었습니다.</p>
					<p><a class="btn btn-default" href="instructror.html">자세히 알아 보기</a></p>
			</div>
			<div class="col-md-4">
				<h4>핵심적인 강의</h4>
					<p>코딩 부스터는 다른 사이트와 차원이 다른 깔끔한 구성을 보여줍니다. 모든 페이지가 사용자가 접근하고 읽기 실도록 정교하게 구성되었습니다.</p>
					<p><a class="btn btn-default" href="lecture.html">자세히 알아 보기</a></p>
			</div>
		</div>
		<hr>
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title"><span class="glyphicon glyphicon-pencil"></span>
			&nbsp;&nbsp; 최신 강의 목록</h3>
		</div>
		<div class="panel-body">
			<div class="media">
				<div class="media-left">
					<a href="lecture.html?lectureName=C"><img class="media-object" src="images/c1.png" alt="C언어 강의 이미지"></a>
				</div>
				<div class="media-body">
					<h4 class="media-heading"><a href="lecture.html?lectureName=C">c언어 기초 프로그래밍 강의 </a>&nbsp;<span class="badge">NEW</span></h4>
					c언어 강의는 기초 프로그래밍 강의입니다. 처음 프로그래밍을 접하는 입문자가 듣기에 적합한 강의입니다.
					강의료는 무료이며 C언어 기초 프로그래밍 강좌는 총 20강으로 구성됩니다.
				</div>
			</div>
			<hr>
			<div class="media">
				<div class="media-left">
					<a href="lecture.html?lectureName=Java"><img class="media-object" src="images/java1.png" alt="JAVA 강의 이미지"></a>
				</div>
				<div class="media-body">
					<h4 class="media-heading"><a href="lecture.html?lectureName=Java">JAVA 기초프로그래밍 강의 </a>&nbsp;<span class="badge">NEW</span></h4>
					JAVA 강의는 기초 프로그래밍 강의입니다. 처음 프로그래밍을 접하는 입문자가 듣기에 적합한 강의입니다.
					강의료는 무료이며 JAVA 기초 프로그래밍 강좌는 총 20강으로 구성됩니다.
				</div>
			</div>
			<hr>
			<div class="media">
				<div class="media-left">
					<a href="lecture.html?lectureName=Android"><img class="media-object" src="images/android1.png" alt="안드로이드 강의 이미지"></a>
				</div>
				<div class="media-body">
					<h4 class="media-heading"><a href="lecture.html?lectureName=Android">안드로이드 스튜디오 강의 </a>&nbsp;<span class="badge">NEW</span></h4>
					안드로이드 강의는 기초 프로그래밍 강의입니다. 처음 프로그래밍을 접하는 입문자가 듣기에 적합한 강의입니다.
					강의료는 무료이며 안드로이드 기초 프로그래밍 강좌는 총 20강으로 구성됩니다.
				</div>
			</div>
		</div>
	</div>
</div>
	<footer style ="background-color: #000000; color: #ffffff">
		<div class="container">
			<br>
			<div class="row">
				<div class="col-sm-2" style="text-align: center;"><h5>Copyrigt &copy; 2018 </h5><h5>박종택(Jongteak Park)</h5></div>
				<div class="col-sm-4"><h4>대표자 소개</h4><p>저는 코딩 부스터의 대표 박종태 입니다. 코세아 인재 개발원에서 공부 하며 웹 개발에 관심이 많습 니다.</p></div>
				<div class="col-sm-2"><h4 style="text-align: center;">내비게이션</h4>
					<div class="list-group">
						<a href="index.html" class="list-group-item">소개</a>
						<a href="instructor.html" class="list-group-item">강사진</a>
						<a href="lecture.html" class="list-group-item">강의</a>
					</div>
				</div>
				<div class="col-sm-2">
					<h4 style="text-align: center;">SNS</h4>
					<div class="list-group">
						<a href="#" class="list-group-item">페이스북</a>
						<a href="#" class="list-group-item">유투브</a>
						<a href="https://blog.naver.com/ahel13" class="list-group-item">네이버 블로그</a>
				</div>
				</div>
				<div class="col-sm-2"><h4 style="text-align: center;"><span class="glyphicon glyphicon-heart">&nbsp;by박종택</span></h4></div>
			</div>
		</div>
	</footer>
 
	<div class="row">
		<div class="modal" id="modal" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						코딩 부스터의 특징
						<button class="close" data-dismiss="modal"><&times;</button>
					</div>
					<div class="modal-body" style="text-align:center;">
						저희 서비스의 특징은 바로 강의를 들을 수 있다는 점입니다.<br>
						특히 다양한 무료 강의가 유투브와 연동되어 제공됩니다.<br>
						<img src="images/Koala.jpg" id="imagepreview" style="width: 256px; height:256px;">
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src ="js/bootstrap.js"></script>
</body>
</html>