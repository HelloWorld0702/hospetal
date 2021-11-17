<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix ="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
  
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="css/bootstrap.css">
	<title>하이펫스</title>
	</head>
	<body>
		<div>
			<form>
				<fieldset>
                    <legend>병원</legend>                    
                    <label>시/도</label>
                        <select name = "f">
                            <option>서울특별시</option>
                            <option>경기도</option>
                        </select>                    
                    <label>정렬</label>
                        <select name = "f">
                            <option>별점순</option>
                            <option>거리순</option>
                        </select>
                        <form action = "radioResult.jsp">
                        <br></br>
        <label for = "samll"><br>소동물 진료</label>
        <input type = "radio" name = "small" value = "가능">
        <br>
         <label for = "cat waiting room"><br>고양이 대기실</label>
        <input type = "radio" name = "cat waiting room" value = "있음">
        <br>
         <label for = "24hour"><br>24시간 진료</label>
        <input type = "radio" name = "24hour" value = "가능">
        <br>
       
                        <input type = "text" name = "q" value = "${param.q}"/>
                        <input type = "submit" value = "검색">                
                </fieldset>        
                
			</form>	
		</div>	
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	</body>
</html>
 

