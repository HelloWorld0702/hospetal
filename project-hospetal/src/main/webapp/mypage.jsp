<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.css">
<title>마이페이지</title>
</head>
<body>
<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">하이펫스</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="search.jsp">병원검색</a></li>
				<li><a href="calendar.jsp">캘린더</a></li>
				<li><a href="mypage.jsp">마이페이지</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	<form method="post" action="UpdateServlet" name="frm">
		<table align="center" width="600">
			<tr>
				<td colspan="2">My Page</td>
			</tr>
			<tr>
				<td>ID</td>
			</tr>
			
			<tr>
				<td>NAME</td>
			</tr>
			<tr>
				<td>PHONE</td>
			</tr>
			<tr>
				<td>E-mail</td>
			</tr>
			<tr>
				<td>REVIEW</td>
			</tr>
			<tr>
				<td>RESERVATION</td>
			</tr>
			<tr align="center">
			<td colspan="2"><input type="submit" value="수정"> &nbsp;<input type="reset" value="탈퇴"></td></tr>
		</table>
	</form>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>