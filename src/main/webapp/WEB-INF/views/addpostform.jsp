<%--
  Created by IntelliJ IDEA.
  User: ram
  Date: 2023/11/30
  Time: 8:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
<table id="edit">
    <tr><td>Name:</td><td><input type="text" name="name"/></td></tr>
    <tr><td>Price:</td><td><input type="text" name="price"/></td></tr>
    <tr><td>Weight:</td><td><input type="text" name="weight"/></td></tr>
    <tr><td>Image:</td><td><input type="text" name="image"/></td></tr>
    <tr>
        <td>Color:</td>
        <td><input type="color" name="color" id="colorPicker"></td>
    </tr>
    <tr>
        <td>Camera:</td>
        <td>
            <input type="radio" id="camera1" name="camera" value="1">
            <label for="camera1">1</label>

            <input type="radio" id="camera2" name="camera" value="2">
            <label for="camera2">2</label>

            <input type="radio" id="camera3" name="camera" value="3">
            <label for="camera3">3</label>

            <input type="radio" id="camera4" name="camera" value="4">
            <label for="camera4">4</label>
        </td>
    </tr>
    <tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
    <tr><td><a href="posts">View All Records</a></td><td align="right"><input type="submit" value="Add Post"/></td></tr>
</table>
</form>

</body>
</html>