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
    <style>
        /* style.css */

        body {
            font-family: Arial, sans-serif; /* Set your preferred font-family */
            background-color: black; /* Set background color for the entire page */
            color: black; /* Set default text color */
            margin: 0; /* Remove default body margin */
        }

        h1 {
            color: white; /* Set the color for the heading */
        }

        #edit {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px; /* Add some space at the top of the table */
            background-color: white; /* Set background color for the table */
        }

        #edit td, #edit th {
            border: 1px solid #ddd; /* Set border for table cells */
            padding: 8px;
            text-align: left;
        }

        #edit th {
            background-color: #333; /* Set background color for table header */
            color: white; /* Set text color for table header */
        }

        #edit tr:nth-child(even) {
            background-color: #f2f2f2; /* Set background color for even rows */
        }

        #edit tr:hover {
            background-color: #ddd; /* Set background color for hovered rows */
        }

        #edit td.color {
            background-color: white; /* Set background color for color cell */
            color: black; /* Set text color for color cell */
            width: 100px;
            height: 20px;
            text-align: center;
        }

        /* Add additional styling for other elements as needed */


    </style>
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
<%--        <td> ${board.color}</td>--%>
    </tr>
    <tr><td>RegDate:</td><td>${board.regdate}</td></tr>
</table>
</body>
</html>
