<%--
  Created by IntelliJ IDEA.
  User: kim-yeonhui
  Date: 2023/12/16
  Time: 3:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>로그인 페이지</title>
    <style>
        body { font-family: Arial, sans-serif; }
        .container { width: 300px; margin: 100px auto; text-align: center; }
        img { max-width: 100%; height: auto; margin-bottom: 20px; }
        form { display: block; margin-top: 20px; }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; }
        input[type='text'], input[type='password'] { width: 100%; padding: 8px; }
        button { background-color: black; color: white; padding: 10px 15px; border: none; cursor: pointer; font-size: 15px; }
    </style>
</head>
<body>
<div class="container">
    <img src="../img/apple.jpeg" alt="Apple Image">
    <form method="post" action="loginOk">
        <div class="form-group">
            <label for="userid">User ID</label>
            <input type="text" id="userid" name="userid">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password">
        </div>
        <button type="submit">Login</button>
    </form>
</div>
</body>
</html>

