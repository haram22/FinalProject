<%--
  Created by IntelliJ IDEA.
  User: ram
  Date: 2023/12/01
  Time: 8:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>🐻 상세보기 🐻</title>
</head>
<body>
<h1>🐻 상세보기 🐻</h1>
<table id="edit">
    <tr><td>Name:</td><td>${board.name}</td></tr>
    <tr><td>Price:</td><td>${board.price}</td></tr>
    <tr><td>Weight:</td><td>${board.weight}</td></tr>
    <tr><td>Content:</td><td>${board.content}</td></tr>
    <tr><td>Camera:</td><td>${board.camera}</td></tr>
    <tr>
        <td>Color:</td>
        <td style="background-color: ${board.color}; width: 100px; height: 20px;"></td>
        <td> ${board.color}</td>
    </tr>
    <tr><td>RegDate:</td><td>${board.regdate}</td></tr>
</table>
</body>
</html>
