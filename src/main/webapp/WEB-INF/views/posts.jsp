<%--
  Created by IntelliJ IDEA.
  User: ram
  Date: 2023/11/30
  Time: 8:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.crud.example.BoardDAO, com.crud.example.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>free board</title>
	<style>
		.round-button {
			display: inline-block;
			padding: 10px 20px;
			background-color: #006bb3;
			color: white;
			border-radius: 20px;
			text-decoration: none;
			font-weight: bold;
			position: fixed;
			top: 20px;
			right: 20px;
		}
		.round-button:hover {
			background-color: #0056a3;
		}
		.card-container {
			display: flex;
			flex-wrap: wrap;
			gap: 20px;
			justify-content: flex-start;
			font-family: 'Helvetica Neue', Arial, sans-serif;
		}
		.card {
			box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
			width: 300px;
			border-radius: 10px;
			padding: 30px;
			background-color: white;
			text-align: center;
			margin-left: 40px;
			transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
		}
		.card a {
			text-decoration: none;
			color: #006bb3;
		}
		.card:hover {
			transform: scale(1.03);
			box-shadow: 0 12px 24px 0 rgba(0,0,0,0.3);
		}
		.card h4, .card p {
			margin: 4px 0;
		}
	</style>
	<script>
		function delete_ok(id){
			let a = confirm("정말로 삭제하겠습니까?");
			if(a) location.href='deleteok/' + id;
		}
	</script>
</head>
<body style="background-color: black">
<div>
	<h1 style="color: white">APPLE</h1>
</div>
<br>
<div class="card-container">
	<c:forEach items="${list}" var="u">
		<div class="card">
			<img src="${u.image}" alt="Image" style="max-width: 100%; height: auto; padding-top: 20px; padding-bottom: 20px;">
			<h4>${u.name}</h4>
			<p>${u.price} 원</p>
			<a href="editform/${u.seq}">✏️</a> |
			<a href="javascript:delete_ok('${u.seq}')">❌</a> |
			<a href="view/${u.seq}">상세보기</a>
		</div>
	</c:forEach>
</div>
<br/>
<a href="add" class="round-button">Add</a>
</body>
</html>
