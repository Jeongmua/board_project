<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>JEONGMUA</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />">
<!--웹폰트 -->
<style>
body, html {
	margin: 0;
	padding: 0;
	height: 100%;
}

.bgimg {
	border: 0;
	padding: 0;
	background-image: url('/image/backimg.jpg');
	min-height: 100%;
	background-size: cover;
}
</style>
</head>
<body>
	<div class="bgimg">
		<nav class="navbar navbar-default">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">JEONGMUA</a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="#">メーン</a></li>
					<li><a href="board/boardList">掲示板</a></li>

				</ul>

				<ul class="nav navbar-nav navbar-right">
					<c:if test="${sessionScope.loginId == null}">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false"> 接続<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="member/loginForm">ログイン</a></li>
								<li><a href="member/joinForm">会員加入</a></li>
							</ul></li>
					</c:if>
				</ul>




				<ul class="nav navbar-nav navbar-right">
					<c:if test="${sessionScope.loginId != null}">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false"><c:if
									test="${sessionScope.loginId != null}">
								${sessionScope.loginName}${sessionScope.loginId}さん
							</c:if> <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="member/logout">ログアウト</a></li>

							</ul></li>
					</c:if>
				</ul>
			</div>
		</nav>

		<div class="container">
			<div class="jumbotron" style="background-color: rgba(0, 0, 0, 0.01);">
				<div class="container">
					<h1>
						掲示板の実装<br>(2020.06～08)
					</h1>
				
				</div>
			</div>
		</div>

		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="js/bootstrap.js"></script>

	</div>
</body>
</html>
